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
#define AC_FN0	ACTION_LAYER_TAP(2, KC_NLCK)
#define AC_FN1	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_0)
#define AC_FN2	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_1)
#define AC_FN3	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_2)
#define AC_FN4	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_READV)
#define AC_FN5	ACTION_FUNCTION_OPT(SWITCH_DEVICE, SWITCH_DEVICE_BLE_REBOND)
#define AC_FN6	ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_TOGGLE)
#define AC_FN7  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_INCREASE)
#define AC_FN8  ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_MODE_DECREASE)
#define AC_FN9	ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_SPEED_INCREASE)
#define AC_FN10	ACTION_FUNCTION_OPT(RGBMATRIX_CONTROL, RGBLIGHT_SPEED_DECREASE)
#define AC_FN11	ACTION_LAYER_TAP(1, KC_PDOT)

/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */


const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP_ENC(
		FN0,  PSLS,  PAST, PMNS,\
		P7,   P8,    P9,   PPLS, \
		P4,   P5,    P6,  \
		P1,   P2,    P3,   PENT, \
		P0,   FN11, \
		VOLU, VOLD),

	[1] = ACTIONMAP_ENC(
		TRNS,  FN1,   FN2,  FN3,\
		FN6,   FN7,   FN8,  FN4, \
		MYCM,  MAIL,  MSEL,  \
		MPRV,  MPLY,  MNXT, FN5, \
		BSPC,  CALC, \
		FN9,  FN10),

	[2] = ACTIONMAP_ENC(  //Android电视遥控器
		NO,    NO,    VOLU, VOLD,\
		NO,    UP,    NO,   HOME, \
		LEFT,  ENTER, RIGHT,  \
		NO,    DOWN,  NO,   ESC, \
		APP,   NO, \
		TRNS,  TRNS),
};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 0   ,  1    ,  2     ,  3,       NO_LED },
        { 6   ,  5    ,  4     ,  10,      NO_LED},
        { 7   ,  8    ,  9     ,  NO_LED,  NO_LED },
        { 13  ,  12   ,  11    ,  16    ,  17 },
        { 14  ,NO_LED ,  15    ,  NO_LED,  NO_LED },
    },
    { // LED Index to Physical Position
        { 32, 25 },   { 96, 25 },   { 160, 25 },  { 224, 25 }, 
		    { 160, 75 },  { 96, 75 },   { 32, 75 }, 
		    { 32, 125 },  { 96, 125 },  { 160, 125 }, { 204, 105 },
		    { 160, 175 }, { 96, 175 },  { 32, 175 },  
		    { 64, 225 },  { 160, 225 }, { 204, 205 }, { 224, 205 },
	  },
    { // LED Index to Flag
        255, 4, 4, 4,
		    4, 4, 4,
		    4, 4, 4, 4,
		    4, 4, 4,
        4, 4, 4,4 }
};

