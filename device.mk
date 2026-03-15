LOCAL_PATH := device/infinix/X657

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
