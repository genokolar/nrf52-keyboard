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
#define AC_FN0     ACTION_LAYER_TAP(1, KC_SPC)
#define AC_FN1     ACTION_LAYER_TAP(2, KC_DEL)
#define AC_FN2     ACTION_LAYER_TAP(3, KC_APP)

/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */
const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP_ROT(
		ESC, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, BSPC, 
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, 
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, ENT, 
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, 
		LCTL, LGUI, LALT, FN0, SPC, FN1, RALT, FN2, RCTL, RBRC,
		VOLU, VOLD,  ESC ),

	[1] = ACTIONMAP_ROT(
		GRV, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, BSLS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, MINS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, QUOT, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, UP, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, LEFT, DOWN, RGHT, EQL,
		PGUP, PGDN,  ESC ),

	[2] = ACTIONMAP_ROT(
		TRNS, F11, F12, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, VOLD, VOLU, MUTE, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS,
		TRNS, TRNS, TRNS ),

	[3] = ACTIONMAP_ROT(
		TRNS, MYCM, MAIL, CALC, MSEL, TRNS, TRNS, TRNS, MPLY, MPRV, MNXT, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS,
		TRNS, TRNS, TRNS ),
};

#define NO NO_LED

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        {  0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,      NO },
        { 24,23,22,21,20,19,18,17,16,15,14,13,      NO },
        { 25,26,27,28,29,30,31,32,33,34,35,36,      NO },
		{ 48,47,46,45,44,43,42,41,40,39,38,37,      NO },
        { 49,50,51,52,NO,53,NO,54,55,56,57,12,      NO },
    },
    { // LED Index to Physical Position
        { 8, 0 },{ 24, 0 },{ 40, 0 },{ 56, 0 },{ 72, 0 },{ 88, 0 },{ 104, 0 },{ 120, 0 },{ 136, 0 },{ 152, 0 },{ 168, 0 },{ 192, 0 }, 
        { 200, 16 },{ 184, 16 },{ 168, 16 },{ 152, 16 },{ 136, 16 },{ 120, 16 },{ 104, 16 },{ 88, 16 },{ 72, 16 },{ 56, 16 },{ 40, 16 },{ 24, 16 },{ 8, 16 },   
		{ 10, 32 }, { 28, 32 },{ 44, 32 },{ 60, 32 },{ 76, 32 },{ 92, 32 },{ 108, 32 }, { 124, 32 }, { 140, 32 },{ 156, 32 },{ 172, 32 },{ 194, 32 }, 
		{ 198, 48 }, { 180, 48 },{ 164, 48 },{ 148, 48 },{ 132, 48 },{ 116, 48 },{ 100, 48 }, { 84, 48 }, { 68, 48 },{ 52, 48 },{ 36, 48 },{ 14, 48 }, 
        { 10, 64 },{ 30, 64 },{ 50, 64 },{ 78, 64 },{ 118, 64 },{ 148, 64 },{ 164, 64 },{ 180, 64 },{ 198, 64 },
	 },
    { // LED Index to Flag
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4 }
};
