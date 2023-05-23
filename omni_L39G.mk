#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from L39G device
$(call inherit-product, device/shuomingdingsheng/L39G/device.mk)

PRODUCT_DEVICE := L39G
PRODUCT_NAME := omni_L39G
PRODUCT_BRAND := GIONEE
PRODUCT_MODEL := 20200418
PRODUCT_MANUFACTURER := shuomingdingsheng

PRODUCT_GMS_CLIENTID_BASE := android-shuomingdingsheng

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_g2030upt_l39j-user 9 PPR1.180610.011 1642658307 release-keys"

BUILD_FINGERPRINT := GIONEE/20200418/L39G:9/PPR1.180610.011/1642658307:user/release-keys
