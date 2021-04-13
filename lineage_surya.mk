#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# MG-APKS
$(call inherit-product-if-exists, vendor/mg-apks/config.mk)
TARGET_EXCLUDES_AUDIOFX := true
TARGET_EXCLUDES_PREBUILT_ETAR_CALENDAR := true
TARGET_EXCLUDES_PREBUILT_SIMPLE_KEYBOARD := true

TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X3 NFC
PRODUCT_MANUFACTURER := Xiaomi
