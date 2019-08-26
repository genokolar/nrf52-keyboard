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
#include "status_led.h"
#include "usb_comm.h"
#include "user_func.h"
#include "util.h"
#include "wait.h"
#include <stdbool.h>
#include <stdint.h>

APP_TIMER_DEF(bootloader_run_timer);
APP_TIMER_DEF(bonds_run_timer);
APP_TIMER_DEF(devices_run_timer);
uint8_t devices_id = 0;

/**
 * @brief command运行handler
 * 
 * @param context 
 */
static void bootloader_handler(void* p_context)
{
    bootloader_jump();
}

static void bonds_handler(void* p_context)
{
    delete_bonds();
}

static void devices_handler(void* p_context)
{
    restart_advertising_id(devices_id);
}

/**
 * @brief 初始化运行计时器
 * 
 */
void command_timer_init(void)
{
    app_timer_create(&bootloader_run_timer, APP_TIMER_MODE_SINGLE_SHOT, bootloader_handler);
    app_timer_create(&bonds_run_timer, APP_TIMER_MODE_SINGLE_SHOT, bonds_handler);
    app_timer_create(&devices_run_timer, APP_TIMER_MODE_SINGLE_SHOT, devices_handler);
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
    case KC_D:
        //清空绑定数据
        clear_keyboard();
        app_timer_start(bonds_run_timer, APP_TIMER_TICKS(1000), NULL);
        break;
    //多设备切换：支持4台设备切换
    case KC_Q:
        clear_keyboard();
        devices_id = 0;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(200), NULL);
        break;
    case KC_W:
        clear_keyboard();
        devices_id = 1;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(200), NULL);
        break;
    case KC_E:
        clear_keyboard();
        devices_id = 2;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(200), NULL);
        break;
    case KC_R:
        clear_keyboard();
        devices_id = 3;
        app_timer_start(devices_run_timer, APP_TIMER_TICKS(1000), NULL);
        break;
    case KC_B:
        //重启到DFU模式
        clear_keyboard();
        app_timer_start(bootloader_run_timer, APP_TIMER_TICKS(1000), NULL);
        break;
    default:
        return false;
    }
    return true;
}
