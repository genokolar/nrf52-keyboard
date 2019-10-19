/*
Copyright 2011 Jun Wako <wakojun@gmail.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
#include "user_command.h"
#include "action_layer.h"
#include "action_util.h"
#include "app_timer.h"
#include "ble_services.h"
#include "bootloader.h"
#include "command.h"
#include "host.h"
#include "keyboard.h"
#include "keycode.h"
#include "keymap.h"
#include "main.h"
#ifdef RGBLIGHT_ENABLE
#include "rgblight.h"
#endif
#include "status_led.h"
#include "usb_comm.h"
#include "user_func.h"
#include "util.h"
#include "wait.h"
#include <stdbool.h>
#include <stdint.h>

APP_TIMER_DEF(bootloader_run_timer);
APP_TIMER_DEF(sleep_run_timer);
APP_TIMER_DEF(bonds_run_timer);
#ifdef Multi_DEVICE_SWITCH
APP_TIMER_DEF(devices_run_timer);
APP_TIMER_DEF(advertising_run_timer);
uint8_t devices_id = 0;
bool restart_without_whitelist = false;
#endif

/**
 * @brief command运行handler
 * 
 * @param context 
 */
static void bootloader_handler(void* p_context)
{
    bootloader_jump();
}

static void sleep_handler(void* p_context)
{
    sleep(SLEEP_MANUALLY);
}

static void bonds_handler(void* p_context)
{
#ifdef Multi_DEVICE_SWITCH
    switch_device_reset();
    restart_without_whitelist = true;
    app_timer_start(advertising_run_timer, APP_TIMER_TICKS(100), NULL);
#else
    delete_bonds();
#endif
}

#ifdef Multi_DEVICE_SWITCH
static void devices_handler(void* p_context)
{
    switch_device_select(devices_id);
    restart_without_whitelist = false;
    app_timer_start(advertising_run_timer, APP_TIMER_TICKS(100), NULL);
}
static void advertising_handler(void* p_context)
{
    advertising_restart(BLE_ADV_MODE_FAST, restart_without_whitelist);
}
#endif
/**
 * @brief 初始化运行计时器
 * 
 */
void command_timer_init(void)
{
    app_timer_create(&bootloader_run_timer, APP_TIMER_MODE_SINGLE_SHOT, bootloader_handler);
    app_timer_create(&sleep_run_timer, APP_TIMER_MODE_SINGLE_SHOT, sleep_handler);
    app_timer_create(&bonds_run_timer, APP_TIMER_MODE_SINGLE_SHOT, bonds_handler);
#ifdef Multi_DEVICE_SWITCH
    app_timer_create(&devices_run_timer, APP_TIMER_MODE_SINGLE_SHOT, devices_handler);
    app_timer_create(&advertising_run_timer, APP_TIMER_MODE_SINGLE_SHOT, advertising_handler);
#endif
}

bool command_extra(uint8_t code)
{
    switch (code) {
    case KC_ESC:
    case KC_GRV:
        //关机
        clear_keyboard();
        systemoff();
        break;
    case KC_M:
        //切换输入模式
#ifdef HAS_USB
        clear_keyboard();
        usb_comm_switch();
#endif
        break;
    case KC_L:
    case KC_SLSH:
        //显示状态灯
        if (!usb_working()) {
            clear_keyboard();
            status_led_display();
        }
        break;
    case KC_O:
        //清空绑定数据
        clear_keyboard();
        app_timer_start(bonds_run_timer, APP_TIMER_TICKS(200), NULL);
        break;
        //多设备切换：支持3台设备切换
#ifdef Multi_DEVICE_SWITCH
    case KC_Q:
        clear_keyboard();
        devices_id = 0;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(100), NULL);
        break;
    case KC_W:
        clear_keyboard();
        devices_id = 1;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(100), NULL);
        break;
    case KC_E:
        clear_keyboard();
        devices_id = 2;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(100), NULL);
        break;
#endif
    case KC_R:
        clear_keyboard();
        advertising_restart(BLE_ADV_MODE_FAST, true);
        break;
        //RGB灯控制
#ifdef RGBLIGHT_ENABLE
    case KC_Z:
        rgblight_step();
        break;
    case KC_X:
        rgblight_toggle();
        break;
    case KC_C:
        rgblight_increase_hue();
        break;
    case KC_V:
        rgblight_decrease_hue();
        break;
    case KC_A:
        rgblight_increase_sat();
        break;
    case KC_S:
        rgblight_decrease_sat();
        break;
    case KC_D:
        rgblight_increase_val();
        break;
    case KC_F:
        rgblight_decrease_val();
        break;
#endif
    case KC_B:
        //重启到DFU模式
        clear_keyboard();
#ifdef RGBLIGHT_ENABLE
        rgblight_disable_noeeprom();
#endif
        app_timer_start(bootloader_run_timer, APP_TIMER_TICKS(1000), NULL);
        break;
    case KC_P:
        //休眠
        clear_keyboard();
#ifdef RGBLIGHT_ENABLE
        rgblight_disable_noeeprom();
#endif
        matrix_uninit();
        app_timer_start(sleep_run_timer, APP_TIMER_TICKS(1000), NULL);
        break;
    default:
        return false;
    }
    return true;
}
