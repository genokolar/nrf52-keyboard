ROOT_DIR := ../../..
APP_MAIN_DIR := $(ROOT_DIR)/application/main
TMK_CORE_DIR := $(ROOT_DIR)/tmk/tmk_core
USB_SOURCE_DIR := $(ROOT_DIR)/usb

APP_PROJ_DIR := $(APP_MAIN_DIR)/project
APP_SRC_DIR := $(APP_MAIN_DIR)/src
USER_SRC_DIR := $(APP_SRC_DIR)/user/glab

CONFIG_H = config.h
CONFIG_H_DIR = .

include ./rules.mk

INC_FOLDERS += \
	. \
	$(USER_SRC_DIR) \


ifeq (yes,$(strip $(ACTIONMAP_ENABLE)))
	SRC_FILES += \
	actionmap_plain.c \
	$(USER_SRC_DIR)/user_fn.c
else
	SRC_FILES += \
	keymap_plain.c \
	$(USER_SRC_DIR)/user_fn.c
endif


# 发布相关设置
export VERSION=11$(shell git log --abbrev-commit --pretty=oneline -1 | cut -c 1-6 || echo 'unknown')
export BUILDTIME=$(shell date +"%Y%m%d")
export FILE_VERSION = $(BUILDTIME)-$(VERSION)
## 如果上层Makefile传递了OUTPUT_DIRECTORY
ifdef OUTPUT_DIRECTORY
ifndef RELEASE_DIR
export RELEASE_DIR = $(OUTPUT_DIRECTORY)/..
endif
NRF_KBD_NAME = $(RELEASE_DIR)/$(BUILD_PREFIX)-$(NRF_CHIP)_kbd-$(FILE_VERSION).hex
NRF_PACKAGE_NAME=$(RELEASE_DIR)/$(BUILD_PREFIX)-$(NRF_CHIP)_dfu-$(FILE_VERSION).zip
OUTPUT_BIN=$(RELEASE_DIR)/$(BUILD_PREFIX)-ch554-$(FILE_VERSION).bin
NRF_MERGE_SIGN_NAME=$(RELEASE_DIR)/$(BUILD_PREFIX)-$(NRF_CHIP)_kbd_sign-$(FILE_VERSION).hex
NRF_MERGE_ALL_NAME=$(RELEASE_DIR)/$(BUILD_PREFIX)-$(NRF_CHIP)_all-$(FILE_VERSION).hex
endif
release: kbd package ch554 all
# END 发布设置

include $(APP_PROJ_DIR)/kbd.mk
include $(USB_SOURCE_DIR)/usb.mk
