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
// #define AC_FN6	ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_TOGGLE)
// #define AC_FN7  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_INCREASE)
// #define AC_FN8  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_DECREASE)
// 切层
#define AC_FN9	ACTION_LAYER_TAP(1, KC_RALT)
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
		GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, BSPC, HOME, 
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, END, 
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, PGUP, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, RSFT, UP, PGDN, 
		LCTL, LGUI, LALT, SPC, FN9, RCTL, LEFT, DOWN, RGHT),

	[1] = ACTIONMAP(
		ESC, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, BSPC, BSPC, FN11, 
		TAB, FN1, FN2, FN3, FN4, FN5, Y, U, I, O, P, LBRC, RBRC, BSLS, END, 
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, PGUP, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, RSFT, UP, PGDN, 
		LCTL, LGUI, LALT, SPC, RALT, RCTL, LEFT, DOWN, RGHT),
};
