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
#define AC_FN1	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_0)
#define AC_FN2	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_1)
#define AC_FN3	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_2)
#define AC_FN4	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_READV)
#define AC_FN5	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_REBOND)
#define AC_FN6	ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_TOGGLE)
#define AC_FN7  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_INCREASE)
#define AC_FN8  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_DECREASE)
#define AC_FN9	ACTION_LAYER_TAP(1, KC_P1)

/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */


const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP(
		ESC,\
		 1, 2, 3, 4, \
		5,6,7,8,\
		 1,2,3,\
		5,6,7,8,\
		  FN9,9),

	[1] = ACTIONMAP(
		TRNS, \
		 FN6,FN7,FN8,TRNS,\
		 FN1,FN2,FN3,FN4,\
		 FN4,TRNS,TRNS,\
		 TRNS,TRNS,TRNS,TRNS,\
		TRNS,TRNS),

};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 0,NO_LED,NO_LED,NO_LED},
        { 4,3,2,1},
        { 8,7,6,5},
        { 11,10,9,NO_LED},
        {15,14,13,12},
        { NO_LED,17,16,NO_LED},
    },
    { // LED Index to Physical Position
{5,54},{17,187},{15,141},{16,97},{16,52},{26,182},{26,140},{26,93},{26,54},{36,141},{36,95},{37,55},{45,184},{46,144},{47,97},{45,54},{57,137},{57,99}
	 },
    { // LED Index to Flag
		4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4}
};
