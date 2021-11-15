OUTPUT_DIR = _build
SUBDIRS=$(filter-out _build common,$(shell ls -l | grep ^d | awk '{print $$9}'))
export VERSION=af$(shell git log --abbrev-commit --pretty=oneline -1 | cut -c 1-6 || echo 'unknown')
export BUILDTIME=$(shell date +"%Y%m%d")
export FILE_VERSION = $(BUILDTIME)-$(VERSION)

ifdef OUTPUT_DIRECTORY
OUTPUT_DIR = $(OUTPUT_DIRECTORY)
endif
ifndef RELEASE_DIR
RELEASE_DIR = $(OUTPUT_DIR)
endif
ifndef BUILD_PREFIX
BUILD_PREFIX = "Omega45"
endif

.PHONY: clean whole package usb merge_setting all dist_clean

package: whole
usb: 
	@echo use make whole to build your release firmware.
merge_setting: 
	@echo use make whole to build your release firmware.
all: 
	@echo use make whole to build your release firmware.

whole: $(SUBDIRS)

$(SUBDIRS): $(OUTPUT_DIR)
	@-mkdir -p $(OUTPUT_DIR)/$@
	@make -C $@ package OUTPUT_DIRECTORY=../$(OUTPUT_DIR)/$@ NRF_PACKAGE_NAME=../$(RELEASE_DIR)/$(BUILD_PREFIX)-$@-nrf52_dfu-$(FILE_VERSION).zip BUILD_PREFIX=$(BUILD_PREFIX)-$@
	@make -C $@ usb OUTPUT_DIRECTORY=../$(OUTPUT_DIR)/$@ OUTPUT_BIN=../$(RELEASE_DIR)/$(BUILD_PREFIX)-$@-ch554-$(FILE_VERSION).bin BUILD_PREFIX=$(BUILD_PREFIX)-$@
	@make -C $@ merge_setting OUTPUT_DIRECTORY=../$(OUTPUT_DIR)/$@ NRF_MERGE_SIGN_NAME=../$(RELEASE_DIR)/$(BUILD_PREFIX)-$@-nrf52_kbd_sign-$(FILE_VERSION).hex BUILD_PREFIX=$(BUILD_PREFIX)-$@
	@make -C $@ all OUTPUT_DIRECTORY=../$(OUTPUT_DIR)/$@ NRF_MERGE_ALL_NAME=../$(RELEASE_DIR)/$(BUILD_PREFIX)-$@-nrf52_all-$(FILE_VERSION).hex BUILD_PREFIX=$(BUILD_PREFIX)-$@

$(OUTPUT_DIR):
	@-mkdir -p $(OUTPUT_DIR)

dist_clean: 
	-rm -r $(OUTPUT_DIR)/*/

clean:
	-rm -r $(OUTPUT_DIR)

# Print all targets that can be built
help:
	@echo following targets are available:
	@echo		nrf52_kbd           - default： build KBD firmware
	@echo		setting             - generate dfu setting
	@echo		bootloader          - build BootLoader firmware
	@echo		package             - pack firmware for DFU
	@echo		all                 - merge bootloader softdevice and dfu setting with application
	@echo		erase               - erase the chip
	@echo		merge_setting       - merge dfu setting with application
	@echo		merge_softdevice    - merge softdevice with application
	@echo		flash               - Flashing KBD firmware
	@echo		flash_setting       - Flashing KBD firmware and dfu setting
	@echo		flash_bootloader    - Flashing bootloader
	@echo		flash_softdevice    - Flashing softdevice
	@echo		flash_all           - Flashing bootloader softdevice and application with dfu setting
	@echo		whole               - make all keyboards firmware in the keyboard folder
	@echo All targets starts with "flash" could has prefix "pyocd_" or "openocd", which \
	means use pyocd  or openocd to flash chip. 