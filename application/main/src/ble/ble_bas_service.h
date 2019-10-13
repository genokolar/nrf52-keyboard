#pragma once
#include <stdint.h>

void battery_timer_start(void);
void battery_service_init(void);
extern uint8_t level; //用于数字电量文本输出
