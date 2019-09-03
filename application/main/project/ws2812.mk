INC_FOLDERS += \
	$(APP_SRC_DIR)/drivers/ws2812

SRC_FILES += \
	$(APP_SRC_DIR)/drivers/ws2812/ws2812.c \
	$(APP_SRC_DIR)/drivers/ws2812/rgblight.c \
	$(APP_SRC_DIR)/drivers/ws2812/led_tables.c \
	$(SDK_ROOT)/modules/nrfx/drivers/src/nrfx_pwm.c
