/*
Copyright (C) 2019 Geno Kolar <geno@live.com>

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
#include "status_led.h"
#include "app_timer.h"
#include "config.h"
#include "eeconfig.h"
#include "keyboard_led.h"
#include "led_softblink.h"
#include "nrf.h"
#include "nrf_gpio.h"
#include <stdint.h>

static void status_led_off_timer_init();

uint8_t saved_status_led_val;
/**
 * @brief 蓝牙广播状态开启闪烁灯
 * 
 */
void ble_blink_led_on()
{
    ret_code_t err_code;
    uint32_t LEDS_MASK;
    uint8_t switch_id = eeconfig_read_switch_id();
    switch (switch_id) {
    case 0:
        LEDS_MASK = (1u << ((LED_BLE) & (~32)));
        break;
    case 1:
        LEDS_MASK = (1u << ((LED_USB) & (~32)));
        break;
    case 2:
        LEDS_MASK = (1u << ((LED_CHARGING) & (~32)));
        break;
    default:
        LEDS_MASK = (1u << ((LED_BLE) & (~32)));
        break;
    }
    const led_sb_init_params_t led_sb_init_param = LED_SB_INIT_DEFAULT_PARAMS(LEDS_MASK);

    err_code = led_softblink_init(&led_sb_init_param);
    APP_ERROR_CHECK(err_code);
    err_code = led_softblink_start(LEDS_MASK);
    APP_ERROR_CHECK(err_code);
}
/**
 * @brief 关闭闪烁灯
 * 
 */
void ble_blink_led_off()
{
    led_softblink_stop();
}
/**
 * @brief 初始化LED
 * 
 */
void status_led_init()
{
    status_led_off_timer_init();

#ifdef LED_BLE
    nrf_gpio_cfg_output(LED_BLE);
#endif
#ifdef LED_USB
    nrf_gpio_cfg_output(LED_USB);
#endif
#ifdef LED_CHARGING
    nrf_gpio_cfg_output(LED_CHARGING);
#endif
}

/**
 * @brief 释放LED
 * 
 */
void status_led_deinit(void)
{
#ifdef LED_BLE
    nrf_gpio_cfg_default(LED_BLE);
#endif
#ifdef LED_USB
    nrf_gpio_cfg_default(LED_USB);
#endif
#ifdef LED_CHARGING
    nrf_gpio_cfg_default(LED_CHARGING);
#endif
}

/**
 * @brief 设置系统状态LED灯的状态
 * 
 * @param status_led_val   LED状态值
 */
static void status_led_set_internal(uint8_t status_led_val)
{
//更改系统LED的状态
#ifdef LED_BLE
    LED_WRITE(LED_BLE, status_led_val & (1 << LED_BIT_BLE));
#endif
#ifdef LED_USB
    LED_WRITE(LED_USB, status_led_val & (1 << LED_BIT_USB));
#endif
#ifdef LED_CHARGING
    LED_WRITE(LED_CHARGING, status_led_val & (1 << LED_BIT_CHARGING));
#endif
}

/**
 * @brief 开启系统状态LED灯
 * 
 */
void status_led_on(void)
{
    status_led_set_internal(saved_status_led_val);
}

/**
 * @brief 熄灭系统状态LED灯
 * 
 */
void status_led_off(void)
{
    status_led_set_internal(0);
}

/**
 * @brief 设置系统状态LED灯的状态值
 * 
 * @param bit 位置
 * @param state 状态
 */
void status_led_set_val(enum led_bit_usage bit, bool state)
{
    uint8_t status_led_val = saved_status_led_val; //读取系统状态LED的状态值
    // 更改系统LED的状态的值
    if (state) {
        status_led_val |= 1 << bit;
    } else {
        status_led_val &= ~(1 << bit);
    }
    saved_status_led_val = status_led_val; //存储系统状态LED的状态值
}

/**
 * @brief 设置系统状态LED灯,并启用自动熄灭
 * 
 */
void status_led_set()
{
    status_led_set_internal(saved_status_led_val);
    off_timer_start();
}

#if LED_AUTOOFF_TIME > 0

APP_TIMER_DEF(status_led_blink_timer);

/**
 * @brief LED闪烁并提示状态handler
 * 
 * @param context 
 */
static void status_led_blink_timer_handler(void* context)
{
    status_led_off();
    status_led_set_internal(saved_status_led_val);
    off_timer_start();
}

/**
 * @brief 初始自动关灯计时器
 * 
 */
static void status_led_off_timer_init(void)
{
    app_timer_create(&status_led_blink_timer, APP_TIMER_MODE_SINGLE_SHOT, status_led_blink_timer_handler);
}

/**
 * @brief 启用LED状态灯显示
 */
void status_led_display()
{
    status_led_set_internal(0x07);
    app_timer_start(status_led_blink_timer, APP_TIMER_TICKS(200), NULL);
}

#else

static void status_led_off_timer_init()
{
}

void status_led_display()
{
}
#endif
