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

#define XX NO_LED

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
		LCTL, LGUI, LALT, SPC, RALT, APP, RGUI, RCTL, LEFT, DOWN, RGHT),

	[1] = ACTIONMAP(
		ESC, FN6, FN7, FN8, F4, F5, F6, F7, F8, F9, F10, F11, F12, DEL, PSCR, SLCK, PAUS, 
		GRV, FN1, FN2, FN3, FN4, FN5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, INS, HOME, PGUP, 
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL, END, PGDN, 
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP, 
		LCTL, LGUI, LALT, SPC, RALT, APP, RGUI, RCTL, LEFT, DOWN, RGHT),

};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0},
        { 17,18,19,20,21,22,23,24,25,26,37,28,29,30,31,32,33},
        { 50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34},
        { 51,52,53,54,55,56,57,58,59,60,61,62,63,XX,XX,XX,XX},
		{ 75,74,73,72,71,70,69,68,67,66,65,64,XX,XX,XX,XX,87},
		{ 76,77,78,XX,XX,79,XX,XX,80,81,82,83,XX,XX,84,85,86}
    },
    { // LED Index to Physical Position
{8,218},{8,205},{8,194},{8,178},{8,164},{8,152},{7,138},{7,127},{7,111},{8,100},{8,88},{8,75},{7,61},{8,48},{8,36},{8,24},{8,8},{20,8},{20,19},{20,33},{21,44},{20,55},{21,68},{21,80},{20,93},{20,106},{20,118},{20,130},{20,141},{20,154},{20,171},{20,194},{20,207},{20,218},{30,219},{30,207},{30,194},{29,175},{31,160},{30,147},{30,136},{30,124},{30,113},{30,100},{29,87},{31,75},{30,61},{30,52},{30,39},{30,27},{30,11},{40,12},{40,29},{39,41},{40,54},{40,64},{40,77},{39,89},{40,103},{40,114},{41,127},{40,139},{40,151},{40,171},{50,168},{50,144},{50,133},{50,120},{50,109},{49,96},{50,84},{50,72},{50,61},{49,48},{50,36},{49,16},{61,9},{60,25},{60,40},{60,85},{60,131},{60,146},{59,163},{59,177},{60,194},{60,207},{60,218},{50,206},{37,195},{37,198},{38,202},{38,206},{38,210},{38,214},{38,216}
},
    { // LED Index to Flag
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,\
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,\
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,\
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,\
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,\
	4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,\
	4,4,4,4,4
	}
};
