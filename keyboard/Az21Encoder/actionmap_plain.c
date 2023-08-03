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
#define AC_FN0  ACTION_MODS_TAP_KEY(MOD_LCTL, KC_CAPS)
#define AC_FN1	ACTION_MODS_TAP_KEY(MOD_RSFT, KC_DOT)
#define AC_FN2	ACTION_LAYER_TAP(1, KC_SPC)
#define AC_FN3	ACTION_MODS_TAP_KEY(MOD_RCTL, KC_DEL)
#define AC_FN4	ACTION_FUNCTION(0)

/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */
const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP_ROT(
		ESC, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, NLCK, BSPC,
		TAB, Q, W, E, R, T, Y, U, I, O, P, BSLS, P7, P8, P9,
		FN0, A, S, D, F, G, H, J, K, L, ENT, P4, P5, P6, 
		LSFT, Z, X, C, V, B, N, M, COMM, FN1, UP, P1, P2, P3, 
		LCTL, LGUI, LALT, FN2, SPC, FN3, LEFT, DOWN, RGHT, P0, PDOT,
		VOLU, VOLD,  ESC),
	[1] = ACTIONMAP(
		GRV, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, PSCR, TRNS,
		FN4, BTN1, MS_U, BTN2, TRNS, TRNS, TRNS, TRNS, TRNS, LBRC, RBRC, TRNS, TRNS, INS, DEL,
		TRNS, MS_L, MS_D, MS_R, TRNS, TRNS, TRNS, TRNS, TRNS, SCLN, QUOT, MPRV, MPLY, MNXT, 
		TRNS, MYCM, CALC, TRNS, TRNS, TRNS, TRNS, TRNS, SLSH, TRNS, TRNS, VOLU, VOLD, MUTE, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, PGUP, PGDN),
};

#define NO NO_LED

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        {   0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,NO },
        {  29,28,27,26,25,24,23,22,21,20,19,18,17,16,NO },
        {  30,31,32,33,34,35,36,37,38,39,40,41,42,43,NO },
        {  57,56,55,54,53,52,51,50,49,48,47,46,45,44,NO },
		{  58,59,60,61,62,63,64,65,66,67,68,15,14,NO,NO },
		{  NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO,NO },
    },
    { // LED Index to Physical Position
		// x = 224 / (NUMBER_OF_COLS - 1) * COL_POSITION
		// y = 64 / (NUMBER_OF_ROWS - 1) * ROW_POSITION
        { 8, 0 },{ 24, 0 },{ 40, 0 },{ 56, 0 },{ 72, 0 },{ 88, 0 },{ 104, 0 },{ 120, 0 },{ 136, 0 },{ 152, 0 },{ 168, 0 },{ 184, 0 }, { 200, 0 },{ 216, 0 },{ 232, 0 }, \
        { 232, 16 },{ 216, 16 },{ 200, 16 },{ 184, 16 },{ 168, 16 },{ 152, 16 },{ 136, 16 },{ 120, 16 },{ 104, 16 },{ 88, 16 },{ 72, 16 },{ 56, 16 },{ 40, 16 }, { 24, 16 },{ 8, 16 }, \
		{ 10, 32 }, { 28, 32 },{ 44, 32 },{ 60, 32 },{ 76, 32 },{ 92, 32 },{ 108, 32 }, { 124, 32 }, { 140, 32 },{ 156, 32 },{ 178, 32 },{ 200, 32 },{ 216, 32 },{ 232, 32 }, \
        { 232, 48 },{ 216, 48 },{ 200, 48 },{ 184, 48 },{ 166, 48 },{ 148, 48 },{ 132, 48 },{ 116, 48 },{ 100, 48 },{ 84, 48 },{ 68, 48 },{ 52, 48 },{ 36, 48 },{ 14, 48 }, \
		{ 10, 64 },{ 30, 64 },{ 50, 64 },{ 78, 64 },{ 118, 64 },{ 150, 64 },{ 168, 64 },{ 184, 64 },{ 200, 64 },{ 216, 64 },{ 232, 64 }
	 },
    { // LED Index to Flag
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, \
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, \
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, \
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, \
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 }
};
