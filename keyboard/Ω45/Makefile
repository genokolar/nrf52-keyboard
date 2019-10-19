ROOT_DIR := ../..
USER_SRC_DIR := ./user_src
APP_MAIN_DIR := $(ROOT_DIR)/application/main
TMK_CORE_DIR := $(ROOT_DIR)/tmk/tmk_core
USB_SOURCE_DIR := $(ROOT_DIR)/usb

APP_PROJ_DIR := $(APP_MAIN_DIR)/project
APP_SRC_DIR := $(APP_MAIN_DIR)/src

CONFIG_H = config.h

include ./rules.mk

INC_FOLDERS += \
    . \
	$(USER_SRC_DIR) \
	$(APP_SRC_DIR)/ble

SRC_FILES += \
	keymap_plain.c \
	$(USER_SRC_DIR)/user_evt.c \
	$(USER_SRC_DIR)/status_led.c \
	$(USER_SRC_DIR)/user_fn.c \
	$(USER_SRC_DIR)/user_func.c \
	$(USER_SRC_DIR)/user_bootmagic.c

ifeq (yes,$(strip $(COMMAND_ENABLE)))
    SRC_FILES += $(USER_SRC_DIR)/user_command.c
endif

all: default ch554

include $(APP_PROJ_DIR)/kbd.mk
include $(USB_SOURCE_DIR)/usb.mk
