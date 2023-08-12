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
#define AC_FN9	ACTION_LAYER_TAP(1, KC_RCTRL)
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
		ESC, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, INS,
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL,
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP,
		LCTL, LGUI, LALT, SPC,RALT,FN9,  LEFT, DOWN, RGHT),

	[1] = ACTIONMAP(
		GRV, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, BSPC, INS,
		TAB, FN1, FN2, FN3, FN4, FN5, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL,
		CAPS, A, S, D, F, G, H, J, K, L, FN12, FN11, FN10, 
		LSFT, FN6, FN7, FN8, V, B, N, M, COMM, DOT, SLSH, RSFT, UP,
		LCTL, LGUI, LALT, SPC,FN1,1,  LEFT, DOWN, RGHT),

};

led_config_t g_led_config={
    {
		{14,13,12,11,10,9,8,7,6,5,4,3,2,1,0},
        {29,28,27,26,25,24,23,22,21,20,19,18,17,16,15},
        {42,41,40,39,38,37,36,35,34,33,32,31,30,NO_LED,NO_LED},
    	{55,54,53,52,51,50,49,48,47,46,45,NO_LED,44,43,NO_LED},
        {64,63,62,NO_LED,NO_LED,NO_LED,61,NO_LED,NO_LED,60,59,NO_LED,58,57,56}},
    {   
        {224,0},{178,0},{158,0},{144,0},{132,0},{119,0},{105,0},{92,0},{79,0},{66,0},{53,0},{40,0},{26,0},{13,0},{0,0},
        {224,16},{179,16},{162,16},{158,16},{145,16},{118,16},{105,16},{92,16},{79,16},{67,16},{53,16},{39,16},{26,16},{16,16},{0,16},
        {174,32},{152,32},{132,32},{125,32},{112,32},{99,32},{86,32},{72,32},{59,32},{46,32},{33,32},{20,32},{6,32},
        {181,48},{161,48},{141,48},{128,48},{115,48},{102,48},{89,48},{76,48},{63,48},{49,48},{36,48},{23,48},{10,48},
        {199,64},{186,64},{173,64},{163,64},{140,64},{81,64},{46,64},{29,64},{0,64},{180,28},{162,28},{158,28},{145,28},{118,28},{105,28},{92,28},{79,28},{67,28},{54,28},{180,52},{162,52},{144,52},{121,52},{101,52},{80,52},{72,52},{56,52},{41,52},{33,52}},
    {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,\
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,\
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,\
    1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,\
    2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2}};
    