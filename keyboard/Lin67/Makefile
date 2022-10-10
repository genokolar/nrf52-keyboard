OUTPUT_DIR = _build
SUBDIRS=$(filter-out _build common,$(shell ls -l | grep ^d | awk '{print $$9}'))


## 如果上层Makefile传递了OUTPUT_DIRECTORY
ifdef OUTPUT_DIRECTORY
OUTPUT_DIR = $(OUTPUT_DIRECTORY)
export RELEASE_DIR = ../$(OUTPUT_DIR)/..
endif
ifndef BUILD_PREFIX
BUILD_PREFIX = "newhope64"
endif

.PHONY: clean release package usb merge_setting all dist_clean

package: release
usb: 
	@echo use make release to build your release firmware.
merge_setting: 
	@echo use make release to build your release firmware.
all: 
	@echo use make release to build your release firmware.

release: $(SUBDIRS)

$(SUBDIRS): $(OUTPUT_DIR)
	@-mkdir -p $(OUTPUT_DIR)/$@
	@make -C $@ release OUTPUT_DIRECTORY=../$(OUTPUT_DIR)/$@ BUILD_PREFIX=$(BUILD_PREFIX)-$@

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
	@echo		release             - make all keyboards firmware in the keyboard folder
	@echo All targets starts with "flash" could has prefix "pyocd_" or "openocd", which \
	means use pyocd  or openocd to flash chip. 