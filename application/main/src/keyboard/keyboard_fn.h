#pragma once
#include "action.h"
#include "nrf_section.h"

enum fn_functions {
    KEYBOARD_CONTROL,
    SWITCH_DEVICE,
    RGBLIGHT_CONTROL = 4, // RGB灯光相关
    RGBMATRIX_CONTROL, // RGB阵列灯光
};

enum fn_keyboard_control {
    CONTROL_SLEEP, // 睡眠键盘
    CONTROL_NKRO, // 切换NKRO状态
    CONTROL_BATTERY_PERCENTAGE, // 输出电池剩余电量
    CONTROL_BOOTLOADER = 0x0F // 进入bootloader
};

enum fn_switch_device {
    SWITCH_DEVICE_USB, // 切换USB状态
    SWITCH_DEVICE_BLE_REBOND = 0x07,
    SWITCH_DEVICE_BLE_0 = 0x08,
    SWITCH_DEVICE_BLE_1 = 0x09,
    SWITCH_DEVICE_BLE_2 = 0x0a,
    SWITCH_DEVICE_BLE_READV = 0x0b,
};

enum fn_rgblight_control {
    RGBLIGHT_TOGGLE, // 开关
    RGBLIGHT_MODE_INCREASE, // 模式+
    RGBLIGHT_MODE_DECREASE, // 模式-
    RGBLIGHT_HUE_INCREASE, // 色相+
    RGBLIGHT_HUE_DECREASE, // 色相-
    RGBLIGHT_SAT_INCREASE, // 饱和度+
    RGBLIGHT_SAT_DECREASE, // 饱和度-
    RGBLIGHT_VAL_INCREASE, // 明度+
    RGBLIGHT_VAL_DECREASE, // 明度-
    RGBLIGHT_SPEED_INCREASE, // 速度+
    RGBLIGHT_SPEED_DECREASE, // 速度-
};

void control_action(uint8_t id, uint8_t opt);
/**
 * @brief 模块的Fn处理函数
 * 
 */
typedef void (*fn_handler)(keyrecord_t* record, uint8_t id, uint8_t opt);

/**
 * @brief 定义Fn处理函数
 * 
 */
#define FN_HANDLER_DEF() NRF_SECTION_DEF(fn_handler, const fn_handler)
/**
 * @brief 定义一个Fn处理函数
 * 
 */
#define FN_HANDLER(handler)                                 \
    NRF_SECTION_ITEM_REGISTER(fn_handler, const fn_handler) \
    __pt_##handler = &handler
#define FN_HANDLER_COUNT NRF_SECTION_ITEM_COUNT(fn_handler, const fn_handler)
#define FN_HANDLER_GET(i) (NRF_SECTION_ITEM_GET(fn_handler, const fn_handler, i))
