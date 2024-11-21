/*
Copyright (C) 2019 Jim Jiang <jim@lotlab.org>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

#include "usb_comm.h"
#include "../config/keyboard_config.h"
#include "app_error.h"
#include "app_uart.h"
#include "nrf.h"
#include "nrf_gpio.h"
#include "nrfx_uart.h"

#include <stdlib.h>
#include <string.h>

#include "../main.h"
#include "app_timer.h"
#include "hid_configuration.h"
#include "host.h"
#include "ble_hid_service.h"

#include "keyboard_host_driver.h"
#include "queue.h"

#ifdef HAS_USB

#define QUEUE_SIZE 512

uint8_t keyboard_led_val_usb;

static uint8_t recv_buf[64];
static uint8_t recv_index;
static uint8_t recv_len;

enum uart_usb_state {
    UART_STATE_IDLE, // 当前 UART 没有正常工作
    UART_STATE_INITED, // 当前 UART 已经初始化，但还未接收到数据
    UART_STATE_WORKING // 当前 UART 正常工作中
};

struct usb_status {
    bool host_connected; // 当前已连接到主机
    bool usb_disable; // 临时禁用 USB 通信功能
    bool uart_checked; // UART 通信检测标志
    bool usb_protocol; // USB 报告类型
    bool usb_remote_wake; //USB已连接并处于远程唤醒状态
    enum uart_usb_state state; // 当前 UART 所属状态
};

static struct usb_status status;

MIXED_QUEUE(uint8_t, uart_queue, QUEUE_SIZE);

/**
 * @brief 计算校验值
 * 
 * @param data 
 * @param len 
 * @return uint8_t 
 */
static uint8_t checksum(uint8_t* data, uint8_t len)
{
    uint16_t checksum = 0;
    for (int i = 0; i < len; i++) {
        checksum = (checksum + data[i]) & 0xFF;
    }
    return (uint8_t)checksum;
}

/**
 * @brief 发送事件
 * 
 * @param 事件类型
 */
static void send_event(enum user_event event, uint8_t arg)
{
#ifdef NKRO_ENABLE
    switch (event) {
    case USER_EVT_USB:
        if (arg < USB_REMOTE_WAKE)
            trig_event_param(USER_EVT_PROTOCOL, m_ble_in_report_mode); //USB 断开，切换到蓝牙HID 记录的协议模式 ? 需确认如果是返回2.4G模式是否会有影响
        else
            trig_event_param(USER_EVT_PROTOCOL, status.usb_protocol);
        break;
    default:
        break;
    }
#endif
    trig_event_param(event, arg);
}

/**
 * @brief 设置状态
 * 
 * @param host 是否连接到主机
 * @param wakeup 主机是否处于睡眠模式
 * @param protocol USB 当前协议类型
 */
static void set_state(bool host, bool wakeup, bool protocol)
{
    if ((status.state == UART_STATE_INITED) || host != status.host_connected) {
        status.host_connected = host;
        send_event(USER_EVT_USB, host ? (status.usb_disable ? USB_NOT_WORKING : USB_WORKING) : USB_NO_HOST);
    }
    if ((status.state == UART_STATE_INITED) || wakeup != status.usb_remote_wake) {
        status.usb_remote_wake = wakeup;
        send_event(USER_EVT_USB, wakeup ? USB_REMOTE_WAKE : (host ? (status.usb_disable ? USB_NOT_WORKING : USB_WORKING) : USB_NO_HOST));
    }
    if ((status.state == UART_STATE_INITED) || status.usb_protocol != protocol) {
        status.usb_protocol = protocol;
        send_event(USER_EVT_PROTOCOL, usb_working() ? protocol : m_ble_in_report_mode); //如USB工作，切换到改变的协议，如果USB 断开切换到蓝牙HID 记录的协议模式？2.4G 模式是否会有影响？
    }
    if (status.state == UART_STATE_INITED) {
        status.state = UART_STATE_WORKING;
    }
}

/**
 * @brief 发送 UART 数据
 * 
 * @param data 
 * @param len 
 */
static void uart_send(uint8_t* data, uint8_t len)
{
    for (uint8_t i = 0; i < len; i++) {
        uint32_t ret_code = app_uart_put(data[i]);
        if (ret_code != NRF_SUCCESS)
            break;
    }
}

/**
 * @brief 接收消息
 * 
 */
static void uart_on_recv()
{
    // 通信协议：
    // CMD DAT ... DAT SUM
    uint8_t buff;
    while (app_uart_get(&buff) == NRF_SUCCESS) {
        recv_buf[recv_index] = buff;
        if (!recv_index) {
            if (buff >= 0x80) { // 配置下发
                recv_len = buff - 0x80 + 2; // CMD 和 SUM 各占 1 byte
                if (recv_len > 2) // 如果是只有命令的包，则忽略
                    recv_index++;
            } else if (buff >= 0x20) { // led
                keyboard_led_val_usb = buff & 0x1F; // 5bit
            } else if (buff >= 0x10) { // status
                bool success = buff & 0x01;
                bool wakeup_status = buff & 0x02;
                bool usb_status = buff & 0x04;
                bool protocol = buff & 0x08;

                // 设置当前状态
                set_state(usb_status, wakeup_status, protocol);

                // 成功接收，出队。
                if (success) {
                    uart_queue_dequeue();
                }
                // 尝试发送下一个
                if (!uart_queue_empty()) {
                    uint8_t data[64];
                    uint8_t len = uart_queue_peek(data);
                    uart_send(data, len);
                }
                status.uart_checked = true;
            }
        } else { //HID通讯命令
            recv_index++;
            if (recv_index >= recv_len) {
                recv_index = 0;
                uint8_t sum = checksum(recv_buf, recv_len - 1);
                if (sum == recv_buf[recv_len - 1]) {
                    // U_CMD H_CMD H_LEN H_DAT... U_SUM
                    respond_flag = false;
                    hid_on_recv(recv_buf[1], recv_len - 4, &recv_buf[3]);
                } else {
                    respond_flag = false;
                    hid_response_generic(HID_RESP_UART_CHECKSUM_ERROR);
                }
                recv_len = 0;
            }
        }
    }
}

/**
 * @brief 关闭UART
 * 
 */
static void uart_to_idle()
{
    uart_queue_clear();
    app_uart_close();
#ifndef UART_DET
    nrf_gpio_cfg_input(UART_RXD, NRF_GPIO_PIN_PULLDOWN);
#endif

    // 做一些状态清理
    status.state = UART_STATE_IDLE;
    status.usb_disable = false;
    status.host_connected = false;
    send_event(USER_EVT_USB, USB_NOT_CONNECT);
    send_event(USER_EVT_PROTOCOL, m_ble_in_report_mode); // USB 断开，切换到蓝牙HID 记录的协议模式？ 2.4G 模式是否会有影响？
}

static void uart_init_hardware();
static void uart_evt_handler(app_uart_evt_t* p_app_uart_event)
{
    switch (p_app_uart_event->evt_type) {
    case APP_UART_DATA:
    case APP_UART_DATA_READY:
        uart_on_recv();
        break;

    case APP_UART_TX_EMPTY:
        break;

    //case APP_UART_COMMUNICATION_ERROR:
    //    app_uart_close();
    //    uart_init_hardware();
    //    break;
    case APP_UART_FIFO_ERROR:
        app_uart_flush();
        break;
    default:
        break;
    }
}

/**
 * @brief 启用UART
 * 
 */
static void uart_init_hardware()
{
    uint32_t err_code;
    const app_uart_comm_params_t config = {
        .baud_rate = UART_BAUDRATE,
        .flow_control = APP_UART_FLOW_CONTROL_DISABLED,
        .rx_pin_no = UART_RXD,
        .tx_pin_no = UART_TXD,
        .use_parity = false
    };

    APP_UART_FIFO_INIT(&config, 64, 64, uart_evt_handler, APP_IRQ_PRIORITY_LOW, err_code);
    APP_ERROR_CHECK(err_code);

    status.state = UART_STATE_INITED;
}

static void uart_task(void* context)
{
    UNUSED_PARAMETER(context);
    if (status.state != UART_STATE_IDLE) {
        // 已经连接状态，检查是否断开
        if (!status.uart_checked) {
            uart_to_idle();
        } else {
            status.uart_checked = false;
        }
    } else {
        // 未连接状态，检查是否连接
#ifdef UART_DET
        if (!nrf_gpio_pin_read(UART_DET)) {
#else
        if (nrf_gpio_pin_read(UART_RXD)) {
#endif
            uart_init_hardware();
        }
    }
}

/**
 * @brief 是否已经连接到主机
 * 
 * @return true 
 * @return false 
 */
bool usb_working(void)
{
    return (status.state == UART_STATE_WORKING) && (status.host_connected || status.usb_remote_wake) && !(status.usb_disable);
}

/**
 * @brief 通过USB发送按键数据包
 * 
 * @param index 数据包类型
 * @param len 长度             
 * @param pattern 
 */
void usb_send(uint8_t index, uint8_t len, uint8_t* pattern)
{
    if (len > 61)
        return;

    uint8_t data[64];
    data[0] = 0x40 + len;
    data[1] = index;

    memcpy(&data[2], pattern, len);
    data[len + 2] = checksum(data, len + 2);

    uart_queue_enqueue(len + 3, data);
}

/**
 * 通过UART发送配置数据包
 */
void uart_send_conf(uint8_t len, uint8_t* data)
{
    if (len > 62)
        return;

    uint8_t buff[64];
    buff[0] = 0x80 + len;  //添加UART通信头
    memcpy(&buff[1], data, len);
    buff[len + 1] = checksum(buff, len + 1); //添加校验和
    uart_queue_enqueue(len + 2, buff);
}

APP_TIMER_DEF(uart_check_timer);
#define UART_CHECK_INTERVAL APP_TIMER_TICKS(250)

/**
 * @brief 初始化USB通信
 * 
 */
void usb_comm_init()
{
    uint32_t err_code;

    err_code = app_timer_create(&uart_check_timer,
        APP_TIMER_MODE_REPEATED,
        uart_task);

    APP_ERROR_CHECK(err_code);
#ifdef UART_DET
    nrf_gpio_cfg_input(UART_DET, NRF_GPIO_PIN_PULLUP);
    if (!nrf_gpio_pin_read(UART_DET)) {
#else
    nrf_gpio_cfg_input(UART_RXD, NRF_GPIO_PIN_PULLDOWN);
    if (nrf_gpio_pin_read(UART_RXD)) {
#endif
        // 初始化时启用UART尝试接收事件，若没有主机则在超时处关闭
        uart_init_hardware();
    }
}

/**
 * @brief 启动USB通信计时器
 * 
 */
void usb_comm_timer_start()
{
    uint32_t err_code = app_timer_start(uart_check_timer, UART_CHECK_INTERVAL, NULL);
    APP_ERROR_CHECK(err_code);
}

/**
 * @brief USB 准备睡眠
 * 
 */
void usb_comm_sleep_prepare()
{
    uart_to_idle();
#ifdef UART_DET
    nrf_gpio_cfg_sense_input(UART_DET, NRF_GPIO_PIN_PULLUP, NRF_GPIO_PIN_SENSE_LOW);
#else
    nrf_gpio_cfg_sense_input(UART_RXD, NRF_GPIO_PIN_PULLDOWN, NRF_GPIO_PIN_SENSE_HIGH);
#endif
}

/**
 * @brief 切换USB和蓝牙设备
 * 
 */
void usb_comm_switch()
{
    if ((status.state == UART_STATE_WORKING) && status.host_connected) {
        status.usb_disable = !status.usb_disable;
        send_event(USER_EVT_USB, status.usb_disable ? USB_NOT_WORKING : USB_WORKING);
    }
}

/**
 * @brief 获取USB键盘下当前的LED状态
 * 
 * @return uint8_t 
 */
static uint8_t usb_get_keyboard_led()
{
    return keyboard_led_val_usb;
}

/**
 * @brief USB 通信驱动
 * 
 */
static struct host_driver usb_driver = {
    .keyboard_leds = &usb_get_keyboard_led,
    .queue_empty = &uart_queue_empty,
    .send_packet = &usb_send,
    .driver_working = &usb_working,
};

// 以一个较高优先级注册USB驱动
KEYBOARD_HOST_DRIVER(5, usb_driver);

#endif
