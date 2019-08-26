/*
Copyright (C) 2018,2019 Jim Jiang <jim@lotlab.org>

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

#include "keymap_common.h"
#include "user_fn.h"

const uint8_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    /* 0: default */
    KEYMAP(
        ESC, 1,   2,   3,   4,   5,   6,   7,   8,   9,   0,   MINS,   EQL, BSPC,   GRV,\
        TAB, Q,   W,   E,   R,   T,   Y,   U,   I,   O,   P,   BSLS,   P7,    P8,   P9, \
        CAPS,A,   S,   D,   F,   G,   H,   J,   K,   L,        ENT,    P4,    P5,   P6,  \
        LSFT,Z,   X,   C,   V,   B,   N,   M,   COMM,DOT,      FN4,    P1,    P2,   P3,\
        LCTL,LGUI,LALT,SPC,           SPC,      FN0, FN1,      FN2,    FN3  , P0,   DEL ),
};
const action_t PROGMEM fn_actions[] = {
    /* Poker Layout */
    [0] = ACTION_LAYER_TAP_KEY(2, KC_DELETE),
    [1] = ACTION_MODS_TAP_KEY(MOD_RALT, KC_LEFT),
    [2] = ACTION_LAYER_TAP_KEY(3, KC_DOWN),
    [3] = ACTION_MODS_TAP_KEY(MOD_RCTL, KC_RIGHT),
    [4] = ACTION_MODS_TAP_KEY(MOD_RSFT, KC_UP),
};

