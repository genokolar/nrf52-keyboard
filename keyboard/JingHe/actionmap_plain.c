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
		ESC, Q, W, E, R, T, Y, U, I, O, P, BSPC, 
		CAPS, A, S, D, F, G, H, J, K, L, ENT, 
		LSFT, Z, X, C, V, B, N, M, LSFT, UP, 
		LCTL, LGUI, SPC, SPC, FN9, LEFT, DOWN, RGHT),

	[1] = ACTIONMAP(
		TAB, GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 
		TRNS, FN1, FN2, FN3, FN4, FN5, TRNS, FN10, FN12, TRNS, TRNS, 
		TRNS, FN6, FN7, FN8, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),

};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 0,1,2,3,4,5,6,7,8,9,10,11},
        { 22,21,20,19,18,17,16,15,14,13,12},
        { 23,24,25,26,27,28,29,30,31,32},
        { 39,38,37,36,35,34,33}
    },
    { // LED Index to Physical Position
{14,18},{13,37},{13,54},{14,70},{13,88},{13,106},{14,123},{13,141},{14,158},{13,176},{14,194},{14,210},{28,205},{28,181},{27,164},{28,146},{27,128},{28,112},{27,93},{28,75},{28,59},{27,40},{27,21},{41,24},{41,47},{41,66},{42,84},{42,101},{41,120},{41,136},{41,154},{42,173},{41,193},{57,211},{56,193},{56,178},{57,144},{56,78},{56,47},{55,24}
	 },
    { // LED Index to Flag
		4,4,4,4,4,4,4,4,4,4,\
		4,4,4,4,4,4,4,4,4,4,\
		4,4,4,4,4,4,4,4,4,4,\
		4,4,4,4,4,4,4,4,4,4
	}
};
