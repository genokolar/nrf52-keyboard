/*
 Copyright (C) 2021,2022 Geno <geno@live.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
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

#define ACTIONMAP_ROT( \
	K00, K01, K02, K03, K04, K05, K06, K07, K08, K09, K60, K61, K62, K63, K64, K6A, \
	K10, K11, K12, K13, K14, K15, K16, K17, K18, K19, K70, K71, K72, K73, K74, K75, K66, K67, K68, \
	K20, K21, K22, K23, K24, K25, K26, K27, K28, K29, K80, K81, K82, K83, K84, K76, K77, K78, K69, \
	K30, K31, K32, K33, K34, K35, K36, K37, K38, K39, K90, K91, K94, K85, K86, K79, \
	K40, K41, K42, K43, K44, K45, K46, K47, K48, K49, K92, K93, K95, K96, K87, K88, K89, \
	K50, K51, K52, K53, K54, K55, K56, K57, K58, K59, K97, K98, K99, \
	K9A, K9B \
) { \
	{ AC_##K00, AC_##K01, AC_##K02, AC_##K03, AC_##K04, AC_##K05, AC_##K06, AC_##K07, AC_##K08, AC_##K09, AC_NO }, \
	{ AC_##K10, AC_##K11, AC_##K12, AC_##K13, AC_##K14, AC_##K15, AC_##K16, AC_##K17, AC_##K18, AC_##K19, AC_NO }, \
	{ AC_##K20, AC_##K21, AC_##K22, AC_##K23, AC_##K24, AC_##K25, AC_##K26, AC_##K27, AC_##K28, AC_##K29, AC_NO }, \
	{ AC_##K30, AC_##K31, AC_##K32, AC_##K33, AC_##K34, AC_##K35, AC_##K36, AC_##K37, AC_##K38, AC_##K39, AC_NO }, \
	{ AC_##K40, AC_##K41, AC_##K42, AC_##K43, AC_##K44, AC_##K45, AC_##K46, AC_##K47, AC_##K48, AC_##K49, AC_NO }, \
	{ AC_##K50, AC_##K51, AC_##K52, AC_##K53, AC_##K54, AC_##K55, AC_##K56, AC_##K57, AC_##K58, AC_##K59, AC_NO }, \
	{ AC_##K60, AC_##K61, AC_##K62, AC_##K63, AC_##K64, AC_NO, AC_##K66, AC_##K67, AC_##K68, AC_##K69, AC_##K6A }, \
	{ AC_##K70, AC_##K71, AC_##K72, AC_##K73, AC_##K74, AC_##K75, AC_##K76, AC_##K77, AC_##K78, AC_##K79, AC_NO }, \
	{ AC_##K80, AC_##K81, AC_##K82, AC_##K83, AC_##K84, AC_##K85, AC_##K86, AC_##K87, AC_##K88, AC_##K89, AC_NO }, \
	{ AC_##K90, AC_##K91, AC_##K92, AC_##K93, AC_##K94, AC_##K95, AC_##K96, AC_##K97, AC_##K98, AC_##K99, AC_NO }, \
	{ AC_##K9A, AC_##K9B }  \
}

#define ACTIONMAP( \
	K00, K01, K02, K03, K04, K05, K06, K07, K08, K09, K60, K61, K62, K63, K64, K6A, \
	K10, K11, K12, K13, K14, K15, K16, K17, K18, K19, K70, K71, K72, K73, K74, K75, K66, K67, K68, \
	K20, K21, K22, K23, K24, K25, K26, K27, K28, K29, K80, K81, K82, K83, K84, K76, K77, K78, K69, \
	K30, K31, K32, K33, K34, K35, K36, K37, K38, K39, K90, K91, K94, K85, K86, K79, \
	K40, K41, K42, K43, K44, K45, K46, K47, K48, K49, K92, K93, K95, K96, K87, K88, K89, \
	K50, K51, K52, K53, K54, K55, K56, K57, K58, K59, K97, K98, K99  \
) { \
	{ AC_##K00, AC_##K01, AC_##K02, AC_##K03, AC_##K04, AC_##K05, AC_##K06, AC_##K07, AC_##K08, AC_##K09, AC_NO }, \
	{ AC_##K10, AC_##K11, AC_##K12, AC_##K13, AC_##K14, AC_##K15, AC_##K16, AC_##K17, AC_##K18, AC_##K19, AC_NO }, \
	{ AC_##K20, AC_##K21, AC_##K22, AC_##K23, AC_##K24, AC_##K25, AC_##K26, AC_##K27, AC_##K28, AC_##K29, AC_NO }, \
	{ AC_##K30, AC_##K31, AC_##K32, AC_##K33, AC_##K34, AC_##K35, AC_##K36, AC_##K37, AC_##K38, AC_##K39, AC_NO }, \
	{ AC_##K40, AC_##K41, AC_##K42, AC_##K43, AC_##K44, AC_##K45, AC_##K46, AC_##K47, AC_##K48, AC_##K49, AC_NO }, \
	{ AC_##K50, AC_##K51, AC_##K52, AC_##K53, AC_##K54, AC_##K55, AC_##K56, AC_##K57, AC_##K58, AC_##K59, AC_NO }, \
	{ AC_##K60, AC_##K61, AC_##K62, AC_##K63, AC_##K64, AC_NO, AC_##K66, AC_##K67, AC_##K68, AC_##K69, AC_##K6A }, \
	{ AC_##K70, AC_##K71, AC_##K72, AC_##K73, AC_##K74, AC_##K75, AC_##K76, AC_##K77, AC_##K78, AC_##K79, AC_NO }, \
	{ AC_##K80, AC_##K81, AC_##K82, AC_##K83, AC_##K84, AC_##K85, AC_##K86, AC_##K87, AC_##K88, AC_##K89, AC_NO }, \
	{ AC_##K90, AC_##K91, AC_##K92, AC_##K93, AC_##K94, AC_##K95, AC_##K96, AC_##K97, AC_##K98, AC_##K99, AC_NO }  \
}
