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
#define AC_FN0    ACTION_LAYER_TAP(1, KC_RALT)
#define AC_FN1    ACTION_LAYER_TAP(2, KC_RCTL)
/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */
const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP_ENC(
		ESC,  1, 2, 3, 4, 5, 6, 7, 8, 9, 0,    MINS, EQL,  BSPC, PGUP,    F1,
		TAB,  Q, W, E, R, T, Y, U, I, O, P,    LBRC, RBRC, BSLS, PGDN,    F2,  
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT,  HOME,          F3,
		LSFT, Z, X, C, V, B, N, M, COMM, DOT,  SLSH, RSFT, UP,   END,     F4,
		LCTL, LGUI, LALT, SPC, FN0, FN1, LEFT, DOWN, RGHT,
		VOLU,  VOLD,  BRTI, BRTD),
};

#define NO NO_LED

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        {   0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,   NO },
        {  31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,   NO },
        {  32,33,34,35,36,37,38,39,40,41,42,43,44,45,15,   NO },
        {  61,60,59,58,57,56,55,54,53,52,51,50,49,48,16,   NO },
        {  62,63,64,NO,NO,65,NO,NO,66,67,68,69,70,47,46,   NO },
    },
    { // LED Index to Physical Position
		// x = 224 / (NUMBER_OF_COLS - 1) * COL_POSITION
		// y = 64 / (NUMBER_OF_ROWS - 1) * ROW_POSITION
        { 4, 0 },{ 12, 0 },{ 20, 0 },{ 28, 0 },{ 36, 0 },{ 44, 0 },{ 52, 0 },{ 60, 0 },{ 68, 0 },{ 76, 0 },{ 84, 0 },{ 92, 0 }, { 100, 0 },{ 112, 0 }, { 124, 0 },{ 136, 4 }, \
        { 136, 12 },{ 124, 8 },{ 114, 8 },{ 104, 8 },{ 96, 8 },{ 88, 8 },{ 80, 8 },{ 72, 8 },{ 64, 8 },{ 56, 8 },{ 48, 8 },{ 40, 8 }, { 32, 8 },{ 24, 8 },{ 16, 8 },{ 6, 8 }, \
        { 7, 16 }, { 18, 16 },{ 26, 16 },{ 34, 16 },{ 42, 16 },{ 50, 16 },{ 58, 16 }, { 66, 16 }, { 74, 16 },{ 82, 16 },{ 90, 16 },{ 98, 16 },{ 111, 16 },{ 124, 16 },{ 136, 20 }, \
        { 136, 28 },{ 124, 24 },{ 116, 24 },{ 105, 24 },{ 94, 24 },{ 86, 24 },{ 78, 24 },{ 70, 24 },{ 62, 24 },{ 54, 24 },{ 46, 24 },{ 38, 24 },{ 30, 24 },{ 22, 24 },{ 9, 24 }, \
        { 5, 32 },{ 15, 32 },{ 25, 32 },{ 55, 32 },{ 85, 32 },{ 95, 32 },{ 108, 32 },{ 116, 32 },{ 124, 32 }
	 },
    { // LED Index to Flag
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4 }
};