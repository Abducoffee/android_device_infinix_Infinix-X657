# Inherit base
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit TWRP config (twrp-11.0 uses vendor/omni)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifiers
PRODUCT_DEVICE := X657
PRODUCT_NAME := twrp_X657
PRODUCT_BRAND := infinix
PRODUCT_MODEL := X657
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# API Level (Android 10 = 29)
PRODUCT_SHIPPING_API_LEVEL := 30

# Fastbootd (required for dynamic partitions)
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Additional libraries
PRODUCT_PACKAGES += \
    libion \
    libhidltransport \
    libhwbinder

# HIDL packages needed for recovery
PRODUCT_PACKAGES += \
    libkeymaster4 \
    libkeymaster41

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
