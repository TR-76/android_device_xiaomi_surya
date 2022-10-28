#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit common SuperiorOS configurations
$(call inherit-product, vendor/superior/config/common.mk)

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# MG-APKS
$(call inherit-product-if-exists, vendor/mg-apks/config.mk)
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_NAME := superior_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
