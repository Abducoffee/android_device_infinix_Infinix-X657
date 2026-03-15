# Inherit base
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit TWRP config (twrp-11.0 uses vendor/omni)
$(call inherit-product, vendor/twrp/config/common.mk)

# Auto detect TWRP version
ifeq ($(wildcard vendor/twrp/config/common.mk),vendor/twrp/config/common.mk)
    $(call inherit-product, vendor/twrp/config/common.mk)
else ifeq ($(wildcard vendor/omni/config/common.mk),vendor/omni/config/common.mk)
    $(call inherit-product, vendor/omni/config/common.mk)
endif

# Device identifiers
PRODUCT_DEVICE := X657
PRODUCT_NAME := twrp_X657
PRODUCT_BRAND := infinix
PRODUCT_MODEL := X657
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# API Level (Android 10 = 29)
PRODUCT_SHIPPING_API_LEVEL := 29

# Fastbootd (required for dynamic partitions)
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Additional libraries
PRODUCT_PACKAGES += \
    libion \
    libhidltransport \
    libhwbinder

# Encryption libraries
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# HIDL packages needed for recovery
PRODUCT_PACKAGES += \
    libkeymaster4 \
    libkeymaster41

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
