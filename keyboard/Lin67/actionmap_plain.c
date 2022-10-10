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
#define AC_FN0    ACTION_LAYER_TAP(1, KC_SPC)

/* 
 * @brief 按键映射
 * 下面的按键映射与按键布局的第一组实际布局对应
 */
const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS] = { 
	
	[0] = ACTIONMAP_ROT(
		ESC, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, MINS, EQL, BSPC, 
		TAB, Q, W, E, R, T, Y, U, I, O, P, LBRC, RBRC, BSLS, DEL,
		CAPS, A, S, D, F, G, H, J, K, L, SCLN, QUOT, ENT, HOME,
		LSFT, Z, X, C, V, B, N, M, COMM, DOT, SLSH, RSFT,  UP, END,
		LCTL, LGUI, LALT, SPC, RALT, RCTL,  FN0,LEFT, DOWN, RGHT),

	[1] = ACTIONMAP(
		GRV, F1, F2, F3, F4, F5, F6, F7, F8, F9, F10, F11, F12, DEL,
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS,
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS,
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS,
		TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS, TRNS)

};

#define NO NO_LED

led_config_t g_led_config = {
    {
        // Key Matrix to LED Index
        {   0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,NO },
        {  38,37,36,35,34,33,32,31,30,29,28,27,26,25,24 },
        {  39,40,41,42,43,44,45,46,47,48,49,50,NO,51,52 },
        {  66,65,64,63,62,61,60,59,58,57,56,NO,55,54,53 },
		{  67,68,69,NO,NO,70,NO,NO,NO,71,72,73,74,75,76 },
    },
    { // LED Index to Physical Position
		// x = 224 / (NUMBER_OF_COLS - 1) * COL_POSITION
		// y = 64 / (NUMBER_OF_ROWS - 1) * ROW_POSITION
{6,9},{7,23},{7,36},{7,51},{7,64},{7,76},{7,91},{7,104},{7,118},{7,131},{7,145},{6,157},{7,171},{6,192},{5,202},{5,204},{6,208},{6,213},{5,220},{9,203},{9,207},{9,212},{8,216},{7,220},{18,218},{17,194},{18,178},{18,165},{18,151},{18,138},{19,124},{18,111},{18,95},{18,82},{18,71},{18,58},{18,44},{18,30},{19,15},{30,15},{30,33},{31,46},{30,59},{31,74},{31,88},{31,101},{31,114},{30,127},{30,140},{31,154},{30,167},{30,187},{30,217},{41,217},{44,202},{42,178},{42,161},{42,148},{42,134},{42,120},{42,106},{42,93},{42,78},{42,66},{42,52},{42,41},{42,19},{54,10},{54,28},{54,45},{54,94},{55,145},{54,157},{54,170},{57,189},{58,200},{57,213} \
	 },
    { // LED Index to Flag
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,4,4,4,4,4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,4,4,4,4,4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4 }
};



