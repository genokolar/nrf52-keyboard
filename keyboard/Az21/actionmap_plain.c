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
#define AC_FN9	ACTION_LAYER_TAP(1, KC_P0)
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
		FN6, FN7, FN8, FN10, 
		NLCK, PSLS, PAST, PMNS, 
		P7, P8, P9, PPLS, 
		P4, P5, P6, 
		P1, P2, P3, 
		P0, PDOT, PENT),

	[1] = ACTIONMAP(
		A, B, C, D, 
		NLCK, PSLS, PAST, PMNS, 
		P7, P8, P9, PPLS, 
		P4, P5, P6, 
		P1, P2, P3, 
		P0, PDOT, PENT)
};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 3,2,1,0},
        { 4,5,6,7},
        { 11,10,9,8},
        { 12,13,14,NO_LED},
        {17,16,15,NO_LED},
        {18,19,20,NO_LED},
    },
    { // LED Index to Physical Position
{10,232},{10,184},{9,135},{10,86},{18,86},{18,133},{18,182},{19,231},{30,231},{26,186},{28,133},{27,85},{36,87},{36,134},{36,183},{45,184},{44,135},{44,85},{53,113},{53,181},{49,230}
	 },
    { // LED Index to Flag
		4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4, 4,4,4}
};
