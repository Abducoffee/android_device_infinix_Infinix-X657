#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/infinix/Infinix-X657

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# System as Root (SAR)
PRODUCT_PACKAGES += \
    linker \
    linker.vendor

# No A/B (seamless unsupported)
PRODUCT_PACKAGES += \
    otapreopt_script
