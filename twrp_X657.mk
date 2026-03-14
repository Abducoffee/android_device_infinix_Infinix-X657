# Inherit base
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit device config
$(call inherit-product, device/infinix/Infinix-X657/device.mk)

# Inherit TWRP config (twrp-11.0 uses vendor/omni)
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifiers
PRODUCT_DEVICE := X657
PRODUCT_NAME := twrp_X657
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X657
PRODUCT_MANUFACTURER := INFINIX MOBILITY LIMITED
