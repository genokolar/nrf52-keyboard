/*
 Copyright (C) 2022,2023 Geno <geno@live.com>

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

#include <stdint.h>
#include <string.h>

#include "app_timer.h"
#include "rgblight_timer.h"
#ifdef RGBLIGHT_ENABLE
#include "rgblight.h"
#endif
#ifdef RGB_MATRIX_ENABLE
#include "rgb_matrix.h"
#endif

APP_TIMER_DEF(rgb_timer);

static void rgb_timer_handler(void* p_context)
{
#if defined(RGBLIGHT_ENABLE)
    rgblight_task();
#endif
#ifdef RGB_MATRIX_ENABLE
    rgb_matrix_task();
#endif
}

void rgb_timer_init(void)
{
    app_timer_create(&rgb_timer, APP_TIMER_MODE_REPEATED, rgb_timer_handler);
    app_timer_start(rgb_timer, APP_TIMER_TICKS(10), NULL);
}