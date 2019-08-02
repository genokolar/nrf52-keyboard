/*
Copyright 2011 Jun Wako <wakojun@gmail.com>

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
#include "action_layer.h"
#include "action_util.h"
#include "ble_services.h"
#include "bootloader.h"
#include "command.h"
#include "host.h"
#include "keyboard.h"
#include "keycode.h"
#include "keymap.h"
#include "main.h"
#include "status_led.h"
#include "usb_comm.h"
#include "user_func.h"
#include "util.h"
#include "wait.h"
#include <stdbool.h>
#include <stdint.h>

bool command_extra(uint8_t code)
{
    switch (code) {
    case KC_ESC:
    case KC_GRV:
        clear_keyboard();
        systemoff();
        break;
    case KC_B:
        clear_keyboard();
        bootloader_jump(); // not return
        break;
    case KC_D:
        if (!usb_working()) {
            clear_keyboard();
            status_led_display();
        }
        break;
    case KC_E:
        clear_keyboard();
        delete_bonds();
        break;
    case KC_M:
#ifdef HAS_USB
        clear_keyboard();
        usb_comm_switch();
#endif
        break;
    default:
        return false;
    }
    return true;
}
