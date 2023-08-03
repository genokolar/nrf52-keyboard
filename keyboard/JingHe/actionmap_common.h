/*
 Copyright (C)  2021,2022 Geno <geno@live.com>

This program is free software: you can redistribute it and/or modify
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
 * 键盘矩阵配置文件
 * 
 * 定义各个按键的位置，方便编写Keymap/Actionmap
 */
#pragma once

#include <stdint.h>
#include "actionmap.h"
#include "config.h"

extern const action_t actionmaps[][MATRIX_ROWS][MATRIX_COLS];

/* 
 * @brief 按键阵列
 * 第一组为实际布局
 * 第二组为按键实际矩阵
 */
#define ACTIONMAP( \
	K000, K001, K002, K003, K004, K005, K006, K007, K008, K009, K010, K011, \
	K100, K101, K102, K103, K104, K105, K106, K107, K108, K109,       K111, \
	K200,       K202, K203, K204, K205, K206, K207, K208, K209, K210,       \
	K300,       K302, K303, K304, K305,                   K309, K310, K311  \
) { \
	{ AC_##K000,  AC_##K001,  AC_##K002,  AC_##K003,  AC_##K004,  AC_##K005,  AC_##K006,  AC_##K007,  AC_##K008,  AC_##K009,  AC_##K010,  AC_##K011 }, \
	{ AC_##K100,  AC_##K101,  AC_##K102,  AC_##K103,  AC_##K104,  AC_##K105,  AC_##K106,  AC_##K107,  AC_##K108,  AC_##K109,  AC_NO, AC_##K111 }, \
	{ AC_##K200,  AC_NO, AC_##K202,  AC_##K203,  AC_##K204,  AC_##K205,  AC_##K206,  AC_##K207,  AC_##K208,  AC_##K209,  AC_##K210,  AC_NO }, \
	{ AC_##K300,  AC_NO, AC_##K302,  AC_##K303,  AC_##K304,  AC_##K305,  AC_NO, AC_NO, AC_NO, AC_##K309,  AC_##K310,  AC_##K311 }  \
}
