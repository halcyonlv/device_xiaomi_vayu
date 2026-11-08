#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8150-common
include device/xiaomi/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/vayu

# Assert
TARGET_OTA_ASSERT_DEVICE := vayu,bhima

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := vayu

# Display
TARGET_SCREEN_DENSITY := 440

# Fastboot
TARGET_SUPPORT_FASTBOOT_UPDATE := true

# Kernel
TARGET_KERNEL_CONFIG += vendor/xiaomi/vayu.config

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit from the MIUI Camera
-include vendor/xiaomi/miuicamera-vayu/BoardConfig.mk

# Inherit from the proprietary version
include vendor/xiaomi/vayu/BoardConfigVendor.mk
