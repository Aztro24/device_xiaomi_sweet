#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit common ProtonPlus OS  Stuff.
$(call inherit-product, vendor/proton/config/common.mk)
WITH_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1080
PRODUCT_NAME := sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi
PROTON_BUILD_VARIANT := OFFICIAL
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sweet_eea-user 13 RKQ1.210614.002 V14.0.5.0.TKFEUXM release-keys"

BUILD_FINGERPRINT := Redmi/sweet_eea/sweet:13/RKQ1.210614.002/V14.0.5.0.TKFEUXM:user/release-keys
