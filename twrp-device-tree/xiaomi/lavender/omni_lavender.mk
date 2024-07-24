#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lavender device
$(call inherit-product, device/xiaomi/lavender/device.mk)

PRODUCT_DEVICE := lavender
PRODUCT_NAME := omni_lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aosp_lavender-user 14 UD2A.240505.001.W1 1719975138 release-keys"

BUILD_FINGERPRINT := Xiaomi/aosp_lavender/lavender:14/UD2A.240505.001.W1/nobody07121727:user/release-keys
