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
		ESC, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12,HOME,INSERT,SCROLLLOCK,DELETE,\
		GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, PAUSE, NUMLOCK, PSLS,  PAST, PMNS, \
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, END, P7,   P8,    P9,   PPLS,\
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, PGUP,P4,   P5,    P6, \
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP, PGDOWN,P1,   P2,    P3,   PENT,\
		LCTL, LGUI, LALT, SPC, FN9,RCTL, LEFT, DOWN, RGHT, P0, PDOT  ),

	[1] = ACTIONMAP(
		TRNS,FN6, FN7, FN8, TRNS,     TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,     TRNS,TRNS,TRNS,TRNS, \
		TRNS,FN1, FN2, FN3, FN4, FN5, TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS, \
		TRNS,TRNS,MS_U,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS, \
		TRNS,MS_L,MS_D,MS_R,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,     TRNS,TRNS,TRNS,TRNS,TRNS,      \
		TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,     TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS, \
		TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS,TRNS),

};

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        { 0,1,2,3,4,NO_LED,5,6,7,8,9,10,11,12,NO_LED,13,14,15,16},
        { 35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17},
        { 36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54},
        { NO_LED,70,69,68,67,66,65,64,63,62,61,60,NO_LED,59,58,57,56,55,NO_LED},
        {71,72,73,74,75,76,77,78,79,80,81,NO_LED,82,83,84,85,86,87,88},
        { 99,98,97,NO_LED,NO_LED,96,NO_LED,NO_LED,NO_LED,95,94,NO_LED,93,92,91,90,NO_LED,89,NO_LED},
    },
    { // LED Index to Physical Position
{8,7},{9,24},{9,36},{9,46},{10,58},{9,74},{9,85},{9,99},{9,108},{8,122},{8,133},{10,144},{9,155},{9,183},{9,195},{9,206},{8,218},{19,219},{20,205},{20,195},{19,186},{20,175},{20,155},{20,141},{20,131},{21,118},{21,107},{20,97},{20,86},{21,75},{20,66},{20,52},{20,42},{21,30},{21,20},{21,8},{29,11},{30,25},{29,35},{30,47},{29,59},{29,70},{31,80},{30,90},{29,102},{29,113},{29,123},{29,135},{29,147},{29,159},{29,174},{30,184},{30,194},{29,206},{32,217},{39,206},{38,196},{37,186},{37,174},{38,155},{38,138},{39,127},{39,116},{40,106},{38,94},{39,84},{39,71},{39,61},{38,52},{39,40},{39,30},{48,15},{47,33},{48,44},{48,55},{48,66},{47,78},{48,89},{48,100},{48,109},{47,121},{47,132},{48,146},{47,161},{47,173},{47,184},{48,194},{47,207},{50,217},{57,205},{56,189},{56,174},{56,163},{57,152},{57,134},{57,121},{57,80},{57,37},{57,23},{57,8},{52,50},{53,63},{55,86},{56,116},{56,148},{55,164},{54,175},{55,189},{55,202},{54,215},
	 },
    { // LED Index to Flag
		4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  
		4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  
		4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  4, 4, 4,  
		4, 4, 4,  4, 4, 4,  4, 4, 4,  4,8,8,8,8,8,8,8,8,8,8,}
};
