/*
 * @Author: 林子 94795254@qq.com
 * @Date: 2023-08-03 22:20:29
 * @LastEditors: 林子 94795254@qq.com
 * @LastEditTime: 2023-08-05 18:18:57
 * @FilePath: \nrf52-keyboard\keyboard\sn80\actionmap_plain.c
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

#include "actionmap.h"
#include "action_code.h"
#include "actionmap_common.h"
#include "keyboard_fn.h"
#include "rgb_matrix.h"
#include "rgb_matrix_types.h"
#include "user_fn.h"
#include "host.h"


extern uint8_t power_save_mode; //引入省电模式全局变量
/* 
 * 定义需使用的FN按键
 */
//  切换三个通信频道
#define AC_FN1	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_0)
#define AC_FN2	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_1)
#define AC_FN3	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_2)
// 重新发射
#define AC_FN4	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_READV)
// 重绑定
#define AC_FN5	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_REBOND)
// rgb控制
#define AC_FN6	ACTION_FUNCTION_OPT(RGBLIGHT_CONTROL, RGBLIGHT_TOGGLE)
#define AC_FN7  ACTION_FUNCTION_OPT(RGBLIGHT_CONTROL, RGBLIGHT_MODE_INCREASE)
#define AC_FN8  ACTION_FUNCTION_OPT(RGBLIGHT_CONTROL, RGBLIGHT_MODE_DECREASE)
// 切层
#define AC_FN9	ACTION_LAYER_TAP(1, KC_RCTL)
// 休眠
#define AC_FN10 ACTION_FUNCTION_OPT(KEYBOARD_CONTROL,CONTROL_SLEEP)
#define AC_FN11 ACTION_FUNCTION_OPT(KEYBOARD_CONTROL,CONTROL_NKRO)

#define AC_FN12 ACTION_FUNCTION_OPT(SWITCH_DEVICE,SWITCH_DEVICE_USB)

/* 	
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */


const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP(
		ESC, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, DEL, PSCR, SLCK, PAUS, 
		GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, INS, HOME, PGUP, 
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL, END, PGDN, 
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP, 
		LCTL, LGUI, LALT, SPC, RALT, RGUI, FN9, RCTL, LEFT, DOWN, RGHT),

	[1] = ACTIONMAP(
		ESC, FN6, FN7, FN8, F4, F5, F6, F7, F8, F9, F10, F11, F12, DEL, PSCR, SLCK, FN10, 
		GRV, FN1, FN2, FN3, FN4, FN5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, INS, HOME, PGUP, 
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL, END, PGDN, 
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP, 
		LCTL, LGUI, LALT, SPC, RALT, RGUI, FN9, RCTL, LEFT, DOWN, RGHT),

};

#define xx NO_LED

#ifdef RGB_MATRIX_ENABLE

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
		{xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx},
		{xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx},
		{xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx},
		{xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx},
		{xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx},
		{xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx,xx}
    },
    { // LED Index to Physical Position
		{37,192},{38,195},{37,199},{37,203},{38,208},{37,211},{38,215},{38,218}
	},
    { // LED Index to Flag
		4, 4, 4,  4, 4, 4,  4, 4}
};

void rgb_matrix_indicators_user(void){
	// #ifdef RGB_MATRIX_INDICATORS_CAPS
    if ((host_keyboard_leds() & (1 << 1)) && (power_save_mode != 2)) { //CAPS_LOCK
        rgb_matrix_set_color_all(RGB_GREEN);
    }
}

#endif