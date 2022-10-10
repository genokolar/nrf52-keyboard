/*
Copyright 2012,2013 Jun Wako <。。u can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

/**
 * 键盘矩阵基配置文件
 * 
 * 定义各个按键的位置，方便编写Keymap
 */
#pragma once

#include <stdint.h>
#include "keymap.h"
#include "config.h"

extern const uint8_t keymaps[][MATRIX_ROWS][MATRIX_COLS];
extern const action_t fn_actions[];

/* GH60 keymap definition macro
 * K2C, K31 and  K3C are extra keys for ISO
 */
#define KEYMAP( \
	K000, K001, K002, K003, K004, K005, K006, K007, K008, K009, K010, K011, K012,       K014, \
	K100,       K102, K103, K104, K105, K106, K107, K108, K109, K110, K111, K112, K113, K114, \
	K200,       K202, K203, K204, K205, K206, K207, K208, K209, K210, K211, K212, K213,       \
	      K301, K302, K303, K304, K305, K306, K307, K308, K309, K310, K311, K312, K313, K314, \
	K400, K401,       K403,             K406,                   K410, K411, K412, K413, K414  \
) { \
	{ K000,  K001,  K002,  K003,  K004,  K005,  K006,  K007,  K008,  K009,  K010,  K011,  K012,  KC_NO, K014 }, \
	{ K100,  KC_NO, K102,  K103,  K104,  K105,  K106,  K107,  K108,  K109,  K110,  K111,  K112,  K113,  K114 }, \
	{ K200,  KC_NO, K202,  K203,  K204,  K205,  K206,  K207,  K208,  K209,  K210,  K211,  K212,  K213,  KC_NO }, \
	{ KC_NO, K301,  K302,  K303,  K304,  K305,  K306,  K307,  K308,  K309,  K310,  K311,  K312,  K313,  K314 }, \
	{ K400,  K401,  KC_NO, K403,  KC_NO, KC_NO, K406,  KC_NO, KC_NO, KC_NO, K410,  K411,  K412,  K413,  K414 }  \
}

/* ANSI variant. No extra keys for ISO */
#define KEYMAP_ANSI( \
	K000, K001, K002, K003, K004, K005, K006, K007, K008, K009, K010, K011, K012,       K014, \
	K100,       K102, K103, K104, K105, K106, K107, K108, K109, K110, K111, K112, K113, K114, \
	K200,       K202, K203, K204, K205, K206, K207, K208, K209, K210, K211, K212, K213,       \
	      K301, K302, K303, K304, K305, K306, K307, K308, K309, K310, K311, K312, K313, K314, \
	K400, K401,       K403,             K406,                   K410, K411, K412, K413, K414  \
) { \
	{ K000,  K001,  K002,  K003,  K004,  K005,  K006,  K007,  K008,  K009,  K010,  K011,  K012,  KC_NO, K014 }, \
	{ K100,  KC_NO, K102,  K103,  K104,  K105,  K106,  K107,  K108,  K109,  K110,  K111,  K112,  K113,  K114 }, \
	{ K200,  KC_NO, K202,  K203,  K204,  K205,  K206,  K207,  K208,  K209,  K210,  K211,  K212,  K213,  KC_NO }, \
	{ KC_NO, K301,  K302,  K303,  K304,  K305,  K306,  K307,  K308,  K309,  K310,  K311,  K312,  K313,  K314 }, \
	{ K400,  K401,  KC_NO, K403,  KC_NO, KC_NO, K406,  KC_NO, KC_NO, KC_NO, K410,  K411,  K412,  K413,  K414 }  \
}

#define KEYMAP_HHKB( \
	K000, K001, K002, K003, K004, K005, K006, K007, K008, K009, K010, K011, K012,       K014, \
	K100,       K102, K103, K104, K105, K106, K107, K108, K109, K110, K111, K112, K113, K114, \
	K200,       K202, K203, K204, K205, K206, K207, K208, K209, K210, K211, K212, K213,       \
	      K301, K302, K303, K304, K305, K306, K307, K308, K309, K310, K311, K312, K313, K314, \
	K400, K401,       K403,             K406,                   K410, K411, K412, K413, K414  \
) { \
	{ K000,  K001,  K002,  K003,  K004,  K005,  K006,  K007,  K008,  K009,  K010,  K011,  K012,  KC_NO, K014 }, \
	{ K100,  KC_NO, K102,  K103,  K104,  K105,  K106,  K107,  K108,  K109,  K110,  K111,  K112,  K113,  K114 }, \
	{ K200,  KC_NO, K202,  K203,  K204,  K205,  K206,  K207,  K208,  K209,  K210,  K211,  K212,  K213,  KC_NO }, \
	{ KC_NO, K301,  K302,  K303,  K304,  K305,  K306,  K307,  K308,  K309,  K310,  K311,  K312,  K313,  K314 }, \
	{ K400,  K401,  KC_NO, K403,  KC_NO, KC_NO, K406,  KC_NO, KC_NO, KC_NO, K410,  K411,  K412,  K413,  K414 }  \
}
