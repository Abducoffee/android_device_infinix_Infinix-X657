# File: device.mk

LOCAL_PATH := device/infinix/Infinix-X657

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# API Level (Android 10 = API 29)
PRODUCT_SHIPPING_API_LEVEL := 29

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Additional binaries
PRODUCT_PACKAGES += \
    libion \
    libhidltransport \
    libhwbinder

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
