#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/infinix/Infinix-X6833B

# Inherit from mt6789-common
include device/transsion/mt6789-common/BoardConfigCommon.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := Infinix-X6833B

# Brightness
override TW_DEFAULT_BRIGHTNESS := 2047
override TW_MAX_BRIGHTNESS := 2077
TW_BRIGTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_INPUT_BLACKLIST := "hbtp_vm"

# Init
TARGET_INIT_VENDOR_LIB := libinit_Infinix-X6833B
TARGET_RECOVERY_DEVICE_MODULES := libinit_Infinix-X6833B

# TWRP Configs
TW_DEVICE_VERSION := X6833B_by_rama982
TW_DEFUALT_LANGUAGE := ru
TW_STATUS_ICONS_ALIGN := right

# Date & Time Fix
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CLOCK_PATH := "/sys/class/rtc/rtc0/time"

# Additional Utilities & Battery
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_RESETPROP := true
TW_BACKUP_EXCLUSIONS := /data/fonts
TW_MAX_RECOVERY_LOG_SIZE := 2048
