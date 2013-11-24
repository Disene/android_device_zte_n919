$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/zte/n919/n919-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/n919/overlay

LOCAL_PATH := device/zte/n919
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
# Inherit from n919 device
$(call inherit-product, device/zte/n919/device.mk)

PRODUCT_NAME := cm_n919
PRODUCT_DEVICE := n919
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE N919
PRODUCT_MANUFACTURER := ZTE
