# File: twrp_Infinix-X657.mk

# Inherit base
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit device config
$(call inherit-product, device/infinix/Infinix-X657/device.mk)

# Inherit TWRP config
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := Infinix-X657
PRODUCT_NAME := twrp_Infinix-X657
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X657
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED
