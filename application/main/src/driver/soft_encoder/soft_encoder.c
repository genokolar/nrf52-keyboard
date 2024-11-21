/*
 Copyright (C) 2022-2025 Geno <geno@live.com>

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
#include "soft_encoder.h"
#include "keyboard_evt.h"
#include "keyboard_matrix.h"
#include "nrf_gpio.h"

#ifndef ENCODER_RESOLUTION
#define ENCODER_RESOLUTION 2
#endif

#ifndef NUMBER_OF_ENCODERS
#define NUMBER_OF_ENCODERS 1
#endif

#if !defined(ROTARY_ENCODER_B) || !defined(ROTARY_ENCODER_A)
#    error "No encoder pads defined by ROTARY_ENCODER_A and ROTARY_ENCODER_B"
#endif

static uint8_t encoders_pad_a[] = ROTARY_ENCODER_A;
static uint8_t encoders_pad_b[] = ROTARY_ENCODER_B;
static uint8_t encoders_pos[NUMBER_OF_ENCODERS][2] = ROTARY_ENCODER_POS;
static uint8_t encoders_neg[NUMBER_OF_ENCODERS][2] = ROTARY_ENCODER_NEG;

static int8_t encoder_LUT[] = {0, -1, 1, 0, 1, 0, 0, -1, -1, 0, 0, 1, 0, 1, -1, 0};

static uint8_t encoder_state[NUMBER_OF_ENCODERS] = {0};

static int8_t encoder_value[NUMBER_OF_ENCODERS] = {0};

APP_TIMER_DEF(soft_encoder_timer);

static void soft_encoder_handler(void* p_context)
{
    encoder_read();
}

// Animation timer -- AVR Timer3
static void soft_encoder_timer_init(void)
{
    app_timer_create(&soft_encoder_timer, APP_TIMER_MODE_REPEATED, soft_encoder_handler);
    app_timer_start(soft_encoder_timer, APP_TIMER_TICKS(2), NULL);
}

static void encoder_init(void) {

    for (int i = 0; i < NUMBER_OF_ENCODERS; i++) {
        nrf_gpio_cfg_input(encoders_pad_a[i],NRF_GPIO_PIN_PULLUP);
        nrf_gpio_cfg_input(encoders_pad_b[i],NRF_GPIO_PIN_PULLUP);

        encoder_state[i] = (nrf_gpio_pin_read(encoders_pad_a[i]) << 0) | (nrf_gpio_pin_read(encoders_pad_b[i]) << 1);
    }
    soft_encoder_timer_init();
}

static void encoder_deinit(void) {

    for (int i = 0; i < NUMBER_OF_ENCODERS; i++) {
        nrf_gpio_cfg_default(encoders_pad_a[i]);
        nrf_gpio_cfg_default(encoders_pad_b[i]);
    }

}

static void encoder_update(int8_t index, uint8_t state) {
    encoder_value[index] += encoder_LUT[state & 0xF];
    if (encoder_value[index] >= ENCODER_RESOLUTION) {
        matrix_forign_add_oneshot(encoders_pos[index][0],encoders_pos[index][1]);
    }
    if (encoder_value[index] <= -ENCODER_RESOLUTION) {
        matrix_forign_add_oneshot(encoders_neg[index][0],encoders_neg[index][1]);
    }
    encoder_value[index] %= ENCODER_RESOLUTION;
}

void encoder_read(void) {
    for (uint8_t i = 0; i < NUMBER_OF_ENCODERS; i++) {
        encoder_state[i] <<= 2;
        encoder_state[i] |= (nrf_gpio_pin_read(encoders_pad_a[i]) << 0) | (nrf_gpio_pin_read(encoders_pad_b[i]) << 1);
        encoder_update(i, encoder_state[i]);
    }
}

static void encoder_event_handler(enum user_event event, void* arg)
{
    uint8_t arg2 = (uint32_t)arg;
    switch (event) {
    case USER_EVT_STAGE:
        switch (arg2) {
        case KBD_STATE_INITED: // 初始化ENCODER
            encoder_init();
            break;
        case KBD_STATE_SLEEP: // 准备休眠
            encoder_deinit();
            break;
        default:
            break;
        }
        break;
    case USER_EVT_SLEEP: // 蓝牙状态事件
        switch (arg2) {
        case SLEEP_EVT_MANUAL:
        case SLEEP_EVT_AUTO:
            for (int i = 0; i < NUMBER_OF_ENCODERS; i++) {
                nrf_gpio_cfg_sense_input(encoders_pad_a[i], NRF_GPIO_PIN_PULLUP, NRF_GPIO_PIN_SENSE_LOW);
                nrf_gpio_cfg_sense_input(encoders_pad_b[i], NRF_GPIO_PIN_PULLUP, NRF_GPIO_PIN_SENSE_LOW);
            }
            break;
        case SLEEP_EVT_MANUAL_NO_WAKEUP:
            for (int i = 0; i < NUMBER_OF_ENCODERS; i++) {
                nrf_gpio_cfg_default(encoders_pad_a[i]);
                nrf_gpio_cfg_default(encoders_pad_b[i]);
            }
            break;
        default:
            break;
        }
        break;
    default:
        break;
    }
}

EVENT_HANDLER(encoder_event_handler);