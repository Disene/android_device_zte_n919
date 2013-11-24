# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x854
## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/n919/n919.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n919
PRODUCT_NAME := cm_n919
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE-N919
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := ZTE-N919
CM_BUILD := ZTE-N919-Disene
#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=n919 \
	BUILD_FINGERPRINT=zte/n919:4.1.2/JZO54K/223160:userdebug/release \
	PRIVATE_BUILD_DESC="ZTE-Disene 4.1.2 JZO54K 223160 release" \
	BUILD_NUMBER=223160

UTC_DATE := $(shell date +%s)
DATE := $(shell date +%Y%m%d)
