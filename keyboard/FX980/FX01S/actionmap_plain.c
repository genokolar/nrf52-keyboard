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
#include "user_fn.h"

/* 
 * 定义需使用的FN按键

#define AC_FN0    ACTION_LAYER_TAP(3, KC_UP)
#define AC_FN1    ACTION_LAYER_TAP(1, KC_SPC)
#define AC_FN2    ACTION_LAYER_TAP(2, KC_DEL)
#define AC_FN3    ACTION_MODS_TAP_KEY(MOD_RALT, KC_LEFT)
#define AC_FN4    ACTION_LAYER_TAP(3, KC_DOWN)
#define AC_FN5    ACTION_MODS_TAP_KEY(MOD_RCTL, KC_RGHT)
#define AC_FN6    ACTION_FUNCTION(7)

#define AC_FN0 ACTION_LAYER_TAP_TOGGLE(1)
#define AC_FN1 ACTION_LAYER_TAP_TOGGLE(0)   按下才能切换层

#define AC_FN0 ACTION_LAYER_OFF_ON(1)
#define AC_FN1 ACTION_LAYER_ON(0)   按下换层后无法换回去


#define AC_FN0 ACTION_LAYER_INVERT(1, ON)
#define AC_FN1 ACTION_LAYER_INVERT(0, ON)
*/
#define AC_FN0 ACTION_LAYER_TOGGLE(1)
#define AC_FN1 ACTION_LAYER_TOGGLE(1)
/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */
const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	[0] = ACTIONMAP_ROT(
        ESC, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, HOME, END, FN0, 
	GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, INS, NLCK, PSLS, PAST, PMNS, 
	TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL, P7, P8, P9, PPLS, 
	CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, P4, P5, P6,  
	LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP, P1, P2, P3, ENT, 
	LCTL, LGUI, LALT, SPC, RALT, RGUI, MENU, RCTL, LEFT, DOWN, RGHT, P0, PDOT, VOLD, VOLU),

	[1] = ACTIONMAP_ROT(
        ESC, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, HOME, END, FN1, 
	GRV, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, INS, NLCK, PSLS, PAST, PMNS, 
	TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL, P7, P8, P9, PPLS, 
	CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, P4, P5, P6,  
	LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT, UP, P1, P2, P3, ENT, 
	LCTL, LGUI, LALT, SPC, RALT, RGUI, MENU, RCTL, LEFT, DOWN, RGHT, P0, PDOT, BRTD, BRTI),

	[2] = ACTIONMAP(
        ESC, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),

	[3] = ACTIONMAP(
        ESC, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, 
        TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS),
};

