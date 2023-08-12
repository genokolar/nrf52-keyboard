

#pragma once

#include <stdint.h>



/* USB和蓝牙的显示参数 */
#define VENDOR_ID 0x414C /* USB VID */
#define PRODUCT_ID 0x021E /* USB PID */
#define CONF_VENDOR_ID 0x9898 /* 配置项目内显示的VendorID */
#define CONF_PRODUCT_ID 0x9999 /* 配置项目内显示的ProductID */
#define DEVICE_VER 0x0001 /* 硬件版本 */
#define MANUFACTURER "Lin" /* 硬件制造商，用于蓝牙显示 */
#define PRODUCT "GH60" /* 硬件名词，用于蓝牙显示 */
// #define MACADDR_SEPRATOR ' ' /* 蓝牙名称后地址的分隔符。若不设置则不显示蓝牙名称后面的地址 */

/* USB HID report parameter */
#define KEYBOARD_EPSIZE 8 /* 键盘上传端点大小，请不要修改 */
#define NKRO_EPSIZE 28 /* 键盘NKRO端点大小，请不要修改 */

// 定义Bootmagic按键
#define BOOTMAGIC_KEY_BOOT KC_U /* 开机 */
#define BOOTMAGIC_KEY_ERASE_BOND KC_E /* 删除所有绑定 */

// 键盘省电参数
#define SLEEP_SLOW_TIMEOUT 15 // 键盘闲置多久后转入慢速扫描模式 (s)
#define SLEEP_OFF_TIMEOUT 1200 // 键盘闲置多久后转入自动关机 (s)
#define KEYBOARD_SCAN_INTERVAL 1 // 键盘最小时间单位TICK (ms)
#define KEYBOARD_FAST_SCAN_INTERVAL 10 // 通常模式下，多久扫描一次键盘 (ms)
#define KEYBOARD_SLOW_SCAN_INTERVAL 100 // 慢速模式下，多久扫描一次键盘 (ms)
#define LED_AUTOOFF_TIME 5 /* LED自动熄灭时长(s)，设为0则不自动熄灭 */
//#define DCDC_ENABLED //启用DCDC电源模式

// 键盘额外功能
//#define DYNAMIC_TX_POWER /* 启用自动发射功率调整 */
//#define PASSKEY_REQUIRED /* 需要输入配对码 */
#define ENABLE_WATCHDOG /* 启用看门狗 */
#define HIGH_TX_POWER /* 更改发射功率到+4dBm */
#define MULTI_DEVICE_SWITCH  /*启用多设备切换 */
#define KEYMAP_STORAGE /* 启用keymap存储 */
// #define MACRO_BLOCKING_MODE /* 在宏播放时禁用其他按键输入 */
#define MACRO_STORAGE /* 启用宏存储功能 */
#define CONFIG_STORAGE /* 启用配置存储功能 */

// #define DEBUG_SKIP_PWRON_CHECK /*  直接开机而跳过开机条件检测，用于调试 */

/* TMK固件内置功能 */
/* disable action features */
//#define NO_ACTION_LAYER
//#define NO_ACTION_TAPPING
//#define NO_ACTION_ONESHOT
//#define NO_ACTION_MACRO
//#define NO_ACTION_FUNCTION




// // ws2812 RGB 配置
// #define RGB_DI_PIN 3
// #define RGBLED_NUM 84
// #define RGBLIGHT_ANIMATIONS
// #define RGB_LIGHT_LIMIT_VAL 200
// #define RGB_LIGHT_EFFECT_BREATHE_MAX 200
// #define RGB_PWR_PIN 4 // P-mos
// //#define RGB_PWR_PIN_REVERSE 20 // N-mos

// #define RGB_DI_PIN 3
// #define RGBLED_NUM 84
// // #define RGBLIGHT_ANIMATIONS
// // #define RGB_LIGHT_LIMIT_VAL 200
// // #define RGB_LIGHT_EFFECT_BREATHE_MAX 200
// #define RGB_PWR_PIN 4 // P-mos
// //#define RGB_PWR_PIN_REVERSE 20 // N-mos

// #define DRIVER_LED_TOTAL 84 //一共有多少个灯，64+12个底灯﻿
// #define RGB_DISABLE_WHEN_USB_SUSPENDED true


// #define RGB_MATRIX_KEYPRESSES
// //#define DISABLE_RGB_MATRIX_ALPHAS_MODS
// //#define DISABLE_RGB_MATRIX_GRADIENT_UP_DOWN
// //#define DISABLE_RGB_MATRIX_BREATHING
// #define DISABLE_RGB_MATRIX_BAND_SAT
// //#define DISABLE_RGB_MATRIX_BAND_VAL
// //#define DISABLE_RGB_MATRIX_BAND_PINWHEEL_SAT
// #define DISABLE_RGB_MATRIX_BAND_PINWHEEL_VAL
// //#define DISABLE_RGB_MATRIX_BAND_SPIRAL_SAT
// //#define DISABLE_RGB_MATRIX_BAND_SPIRAL_VAL
// //#define DISABLE_RGB_MATRIX_CYCLE_ALL
// //#define DISABLE_RGB_MATRIX_CYCLE_LEFT_RIGHT
// //#define DISABLE_RGB_MATRIX_CYCLE_UP_DOWN
// //#define DISABLE_RGB_MATRIX_CYCLE_OUT_IN
// //#define DISABLE_RGB_MATRIX_CYCLE_OUT_IN_DUAL
// //#define DISABLE_RGB_MATRIX_RAINBOW_MOVING_CHEVRON
// //#define DISABLE_RGB_MATRIX_DUAL_BEACON
// //#define DISABLE_RGB_MATRIX_CYCLE_PINWHEEL
// #define DISABLE_RGB_MATRIX_CYCLE_SPIRAL
// #define DISABLE_RGB_MATRIX_RAINBOW_BEACON
// //#define DISABLE_RGB_MATRIX_RAINBOW_PINWHEELS
// //#define DISABLE_RGB_MATRIX_RAINDROPS
// #define DISABLE_RGB_MATRIX_JELLYBEAN_RAINDROPS
// //#define DISABLE_RGB_MATRIX_TYPING_HEATMAP
// //#define DISABLE_RGB_MATRIX_DIGITAL_RAIN
// //#define DISABLE_RGB_MATRIX_SOLID_REACTIVE
// #define DISABLE_RGB_MATRIX_SOLID_REACTIVE_SIMPLE
// //#define DISABLE_RGB_MATRIX_SOLID_REACTIVE_WIDE
// //#define DISABLE_RGB_MATRIX_SOLID_REACTIVE_MULTIWIDE
// #define DISABLE_RGB_MATRIX_SOLID_REACTIVE_CROSS
// //#define DISABLE_RGB_MATRIX_SOLID_REACTIVE_MULTICROSS
// #define DISABLE_RGB_MATRIX_SOLID_REACTIVE_NEXUS
// //#define DISABLE_RGB_MATRIX_SOLID_REACTIVE_MULTINEXUS
// //#define DISABLE_RGB_MATRIX_SPLASH
// #define DISABLE_RGB_MATRIX_MULTISPLASH
// #define DISABLE_RGB_MATRIX_SOLID_SPLASH
// #define DISABLE_RGB_MATRIX_SOLID_MULTISPLASH

// ws2812 RGB 配置
#define RGB_DI_PIN 3
#define RGBLED_NUM 84
#define DRIVER_LED_TOTAL RGBLED_NUM
#define RGBLIGHT_ANIMATIONS
#define RGB_PWR_PIN 4 // P-mos
//#define RGB_PWR_PIN_REVERSE 20 // N-mos

//RGB_MATRIX 配置
#define RGB_MATRIX_KEYPRESSES // reacts to keypresses
//#define RGB_MATRIX_KEYRELEASES // reacts to keyreleases (instead of keypresses)
#define RGB_MATRIX_FRAMEBUFFER_EFFECTS // enable framebuffer effects
#define RGB_DISABLE_TIMEOUT 0 // number of milliseconds to wait until rgb automatically turns off
#define RGB_DISABLE_AFTER_TIMEOUT 2 // OBSOLETE: number of ticks to wait until disabling effects
//#define RGB_MATRIX_LED_PROCESS_LIMIT (DRIVER_LED_TOTAL + 4) / 5 // limits the number of LEDs to process in an animation per task run (increases keyboard responsiveness)
#define RGB_MATRIX_LED_FLUSH_LIMIT 16 // limits in milliseconds how frequently an animation will update the LEDs. 16 (16ms) is equivalent to limiting to 60fps (increases keyboard responsiveness)
#define RGB_MATRIX_MAXIMUM_BRIGHTNESS 200 // limits maximum brightness of LEDs to 200 out of 255. If not defined maximum brightness is set to 255
//#define RGB_MATRIX_STARTUP_MODE RGB_MATRIX_CYCLE_LEFT_RIGHT // Sets the default mode, if none has been set
#define RGB_MATRIX_STARTUP_HUE 0 // Sets the default hue value, if none has been set
#define RGB_MATRIX_STARTUP_SAT 255 // Sets the default saturation value, if none has been set
#define RGB_MATRIX_STARTUP_VAL RGB_MATRIX_MAXIMUM_BRIGHTNESS // Sets the default brightness value, if none has been set
#define RGB_MATRIX_CENTER { 120, 32 }
#define RGB_MATRIX_INDICATORS_CAPS 28
#define RGB_MATRIX_INDICATORS_HOST 1

// 独立硬件按钮
// #define POWER_BUTTON 3

// USB UART 传输配置
#define HAS_USB // 启用与CH554的通信支持
#define UART_RXD 9 // UART_RX口IO 17
#define UART_TXD 10 // UART_TX口IO 18
//#define UART_DET 19 // UART 检测引脚，若此脚被拉低，则说明USB正在工作。若不配置则使用RX口作为检测引脚
#define UART_BAUDRATE NRF_UART_BAUDRATE_115200 // 通信波特率，请不要修改

// 电量检测配置
#define BATTERY_ADC_PIN NRF_SAADC_INPUT_AIN0 // 电量检测引脚 Pin 2

// 充电检测配置
//#define PIN_CHARGING !UCC1
//#define PIN_STANDBY !UCC2

// 按键阵列配置
#define MATRIX_ROWS 5 /* 硬件阵列行数 */
#define MATRIX_COLS 15 /* 硬件阵列列数 */

/* key combination for command */
#define IS_COMMAND() ( \
    keyboard_report->mods == (MOD_BIT(KC_LSHIFT) | MOD_BIT(KC_RSHIFT)))

static const uint8_t row_pin_array[MATRIX_ROWS] = {25, 26, 12, 30, 31};
static const uint8_t column_pin_array[MATRIX_COLS] = {5, 6, 7, 8, 11, 19, 22, 23, 24, 18, 17, 16, 15, 14, 13};
#define ROW_IN // 键盘阵列的二极管方向是从COL->ROW

/* define if matrix has ghost */
// #define MATRIX_HAS_GHOST /* 按键阵列是否出现Ghost Key，若没有加二极管则需要启用这个项目 */

#define DEBOUNCE 5 /* 硬件消抖次数，设置为0则不消抖 */
#define MATRIX_SCAN_DELAY_CYCLE 48 /* 按键扫描等待IO稳定的延时时长 */
