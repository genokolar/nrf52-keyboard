/*
Copyright (C) 2019 Geno Kolar <geno@live.com>

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

#include "user_func.h"
#include "app_timer.h"
#include "config.h"
#include "nrf_gpio.h"
#include "bootloader.h"
#include <stdint.h>
#include <string.h>

APP_TIMER_DEF(button_timer_id);
uint8_t button_count = 0;

/**
 * @brief power button按键处理
 * 
 * @param p_context 
 */
static void button_handler(void *p_context)
{

    if ((nrf_gpio_pin_read(POWER_BUTTON) == 0 ? true : false)) //如果BUTTON输入低电平(按下)，则启动计数
    {
        button_count++;
        return;
    } else {
        if (button_count > 0 && button_count <= 2) {
            button_count = 0;
            systemoff();
        }
        if (button_count >= 3) {
            button_count = 0;
            bootloader_jump();
        }
    }
}

/**@brief POWER_BUTTON按钮计时器初始化
 *
 * @details Initializes the timer module.
 */
static void buttons_timers_init(void)
{
    uint32_t err_code;

    err_code = app_timer_create(&button_timer_id, APP_TIMER_MODE_REPEATED, button_handler);
    APP_ERROR_CHECK(err_code);
}

/**
* @brief 初始化POWER_BUTTON按钮
 * 
 */
void buttons_init(void)
{
#ifdef POWER_BUTTON
    nrf_gpio_cfg_sense_input(POWER_BUTTON,
                             NRF_GPIO_PIN_PULLUP,
                             NRF_GPIO_PIN_SENSE_LOW);
    buttons_timers_init();
    app_timer_start(button_timer_id, APP_TIMER_TICKS(1000), NULL);
#endif
}

