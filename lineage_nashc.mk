#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from device makefile.
$(call inherit-product, device/realme/nashc/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some RisingOSS stuff.
RISING_CHIPSET := "Mediatek Helio G95"
RISING_MAINTAINER := Eren_Yeager
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
RISING_PACKAGE_TYPE := "CORE GAPPS"
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
SUSHI_BOOTANIMATION := 1080
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := fals
TARGET_CORE_GMS_EXTRAS := true
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_EXCLUDES_AUDIOFX := false
TARGET_BUILD_APERTURE_CAMERA := true

PRODUCT_NAME := lineage_nashc
PRODUCT_DEVICE := nashc
PRODUCT_MANUFACTURER := Realme
PRODUCT_BRAND := Realme
PRODUCT_MODEL := Realme 8

PRODUCT_GMS_CLIENTID_BASE := android-realme

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX3085L1 \
    PRODUCT_NAME=RMX3085 \
    PRIVATE_BUILD_DESC="RMX3085-user 12 SP1A.210812.016 R.GDPR.c3619e_1 release-keys"

BUILD_FINGERPRINT := realme/RMX3085/RMX3085L1:12/SP1A.210812.016/R.GDPR.c3619e_1:user/release-keys