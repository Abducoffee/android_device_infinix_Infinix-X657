# Dynamic Partition Support
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Decryption Packages
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Inherit from common TWRP setup
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device identifiers
PRODUCT_DEVICE := X657
PRODUCT_NAME := omni_X657
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X657
PRODUCT_MANUFACTURER := Infinix
