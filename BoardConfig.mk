#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/Infinix-X6833B

# Inherit common configuration
include device/transsion/mt6789-common/BoardConfigCommon.mk

# Device assertion
TARGET_OTA_ASSERT_DEVICE := Infinix-X6833B

# Init
TARGET_INIT_VENDOR_LIB := libinit_Infinix-X6833B
TARGET_RECOVERY_DEVICE_MODULES += libinit_Infinix-X6833B

# TWRP configuration
TW_DEVICE_VERSION := X6833B_by_rama982
TW_DEFAULT_LANGUAGE := ru

# Brightness
# Values below assume a verified 0-255 brightness range.
# Change only after checking the actual device sysfs interface.
TW_DEFAULT_BRIGHTNESS := 80
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness

# Input
TW_INPUT_BLACKLIST := hbtp_vm

# Date and time
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CLOCK_PATH := /sys/class/rtc/rtc0/time

# Additional utilities
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_RESETPROP := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_MAX_RECOVERY_LOG_SIZE := 2048

# Status bar
TW_STATUS_ICONS_ALIGN := right
