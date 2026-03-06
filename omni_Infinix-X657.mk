#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from Infinix-X657 device
$(call inherit-product, device/infinix/Infinix-X657/device.mk)

PRODUCT_DEVICE := Infinix-X657
PRODUCT_NAME := omni_Infinix-X657
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X657
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x657_h8030-user 10 QP1A.190711.020 47908 release-keys"

BUILD_FINGERPRINT := Infinix/X657-OP/Infinix-X657:10/QP1A.190711.020/AB-OP-220809V742:user/release-keys
