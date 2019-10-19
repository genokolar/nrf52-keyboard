# ROOT_DIR当前设定是为了在线编译服务设定
ROOT_DIR := /usr/local/src/nrf52-keyboard
# 一般情况下应该将ROOT_DIR设定为如下
#ROOT_DIR := ../..
USER_SRC_DIR := ./user_src
APP_MAIN_DIR := $(ROOT_DIR)/application/main
TMK_CORE_DIR := $(ROOT_DIR)/tmk/tmk_core
USB_SOURCE_DIR := $(ROOT_DIR)/usb

APP_PROJ_DIR := $(APP_MAIN_DIR)/project
APP_SRC_DIR := $(APP_MAIN_DIR)/src

# 特殊目录控制
SDK_ROOT := $(ROOT_DIR)/SDK
TEMPLATE_PATH := $(ROOT_DIR)/template

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
