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
#define AC_FN6	ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_TOGGLE)
#define AC_FN7  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_INCREASE)
#define AC_FN8  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_DECREASE)
// 切层
#define AC_FN9	ACTION_LAYER_TAP(1, KC_SPACE)
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
		ESC, GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, 
		PGUP, TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, 
		PGDN, CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, 
		LSFT, Z, X, C, V, B, B, N, M, COMM, DOT, SLSH, UP, RSFT, 
		LCTL, LGUI, LALT, SPC, SPC, Z, LCTL, LEFT, DOWN),

	[1] = ACTIONMAP(
		FN10, TRNS, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, DEL, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		LCTL, LGUI, LALT, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),

};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,NO_LED},
        { 15,16,17,NO_LED,18,19,20,21,22,23,24,25,26,27,28,29},
        { 42,NO_LED,41,NO_LED,20,39,38,37,36,35,34,33,32,31,NO_LED,20},
        { NO_LED,43,44,NO_LED,45,46,47,48,49,50,51,52,53,54,55,56},
        { NO_LED,65,64,NO_LED,63,NO_LED,62,NO_LED,NO_LED,61,NO_LED,60,NO_LED,59,58,57},
    },
    { // LED Index to Physical Position
{10,209},{10,191},{8,180},{10,165},{12,154},{15,141},{17,129},{18,107},{16,95},{14,81},{11,70},{9,56},{10,44},{10,32},{7,14},{17,11},{21,32},{20,47},{20,60},{23,73},{25,85},{27,97},{29,125},{27,137},{23,149},{22,161},{20,175},{22,187},{21,199},{21,215},{31,214},{32,194},{31,181},{32,168},{33,156},{36,143},{38,130},{38,98},{37,86},{35,74},{32,61},{32,48},{28,9},{42,31},{42,51},{43,64},{45,77},{47,89},{50,103},{50,126},{48,140},{45,151},{44,165},{43,177},{43,191},{42,203},{42,220},{53,215},{54,203},{54,190},{54,166},{58,140},{60,91},{56,69},{53,40},{53,25},{53,9},{51,9},{50,9},{47,9},{47,9},{45,9},{43,9},{41,9},{40,9},{38,9}
	 },
    { // LED Index to Flag
		4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
		8,8,8,8,8,8,8,8,8,8,
	}
};
