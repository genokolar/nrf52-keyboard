/*
 Copyright (C) 2021,2022 Geno <geno@live.com>

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

#ifdef CONFIG_H_FILE
#include CONFIG_H_FILE
#endif

#include "host.h"
#include "keyboard_evt.h"
#include "main.h"
#include "rgb_matrix.h"
#include "rgb_matrix_types.h"
#include "usb_comm.h"

extern uint8_t ble_channel; //引入蓝牙通道全局变量
extern uint8_t power_save_mode; //引入省电模式全局变量

void rgb_matrix_indicators_advanced_kb(uint8_t led_min, uint8_t led_max)
{
    if (rgb_matrix_is_indicator() && !rgb_matrix_is_enabled()) { //仅指示灯状态，先熄灭所有灯
        rgb_matrix_set_color_all(RGB_OFF);
        // 关闭rgb后只显示指示灯
        //lingyi
        //默认关闭所有灯光
        // #ifdef RGB_PWR_PIN
        //    nrf_gpio_pin_write(RGB_PWR_PIN, 1);
        // #endif
    }

    //键盘指示灯
#ifdef RGB_MATRIX_INDICATORS_NUM
    if ((host_keyboard_leds() & (1 << 0)) && (power_save_mode != 2) && rgb_matrix_is_indicator()) { //NUM_LOCK
        rgb_matrix_set_color(RGB_MATRIX_INDICATORS_NUM, RGB_RED);
    }
#endif
#ifdef RGB_MATRIX_INDICATORS_CAPS
    if ((host_keyboard_leds() & (1 << 1)) && (power_save_mode != 2) && rgb_matrix_is_indicator()) { //CAPS_LOCK
        rgb_matrix_set_color(RGB_MATRIX_INDICATORS_CAPS, RGB_RED);
    }
#endif
#ifdef RGB_MATRIX_INDICATORS_SCROLL
    if ((host_keyboard_leds() & (1 << 2)) && (power_save_mode != 2) && rgb_matrix_is_indicator()) { //SCROLL_LOCK
        rgb_matrix_set_color(RGB_MATRIX_INDICATORS_SCROLL, RGB_RED);
    }
#endif
    //HOST状态灯
#ifdef RGB_MATRIX_INDICATORS_HOST
    if (usb_working() && rgb_matrix_is_indicator()) { //USB WORKING
        rgb_matrix_set_color(RGB_MATRIX_INDICATORS_HOST, RGB_GREEN);
    } else if ((power_save_mode != 2) && rgb_matrix_is_indicator()) { //WIRELESS WORKING
        switch (ble_channel) {
        case 0:
            rgb_matrix_set_color(RGB_MATRIX_INDICATORS_HOST, RGB_BLUE);
            break;
        case 1:
            rgb_matrix_set_color(RGB_MATRIX_INDICATORS_HOST, RGB_RED);
            break;
        case 2:
            rgb_matrix_set_color(RGB_MATRIX_INDICATORS_HOST, RGB_ORANGE);
            break;
        default:
            break;
        }
    }
#endif
}

static void rgb_matrix_indicators_on(void) {
    ws2812_pwr_on();
}

static void rgb_matrix_indicators_off(void) {
    ws2812_pwr_off();
}

static void status_rgb_matrix_indicators_evt_handler(enum user_event event, void* arg) //need mod
{
    uint8_t arg2 = (uint32_t)arg;
    switch (event) {
    case USER_EVT_POWERSAVE:
        switch (arg2) {
        case PWR_SAVE_EXIT: // 退出省电模式，强制打开指示灯
            if (rgb_matrix_is_indicator() && !rgb_matrix_is_enabled()) {
                rgb_matrix_indicators_on();
            }
            break;
        case PWR_SAVE_ENTER: // 进入省电模式，关闭指示灯
            if (rgb_matrix_is_indicator() && !rgb_matrix_is_enabled()) {
                rgb_matrix_indicators_off();
            }
            break;
        default:
            break;
        }
        break;
    case USER_EVT_LED: // 键盘灯状态改变
    case USER_EVT_BLE_DEVICE_SWITCH: //蓝牙连接设备切换
        if (rgb_matrix_is_indicator() && !rgb_matrix_is_enabled()) {
            rgb_matrix_indicators_on();
        }
        break;
    default:
        break;
    }
}

EVENT_HANDLER(status_rgb_matrix_indicators_evt_handler);