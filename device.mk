$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_as_supl.mk)
$(call inherit-product-if-exists, vendor/zte/n919/n919-vendor.mk)
#$(call inherit-product-if-exists, vendor/zte/qcom-common/common-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/n919/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Video
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm7627a \
    gralloc.msm7627a \
    hwcomposer.msm7627a \
    libtilerenderer

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7627a \
    audio.primary.msm7627a \
    audio_policy.conf \
    libaudioutils

# GPS
PRODUCT_PACKAGES += \
    dexpreopt \
    gps.n919 \
    libloc_api-rpc \
    Camera

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs \
    e2fsck

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory 

# iptables
PRODUCT_PACKAGES += \
    iptables \
    ip6tables

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml
    
PRODUCT_COPY_FILES += \
    device/zte/n919/ramdisk/res:root/res \
    device/zte/n919/ramdisk/fstab.msm7627a:root/fstab.msm7627a \
    device/zte/n919/ramdisk/fstab.nand.msm7627a:root/fstab.nand.msm7627a \
    device/zte/n919/ramdisk/fstab.qcom:root/fstab.qcom \
    device/zte/n919/ramdisk/init.qcom.rc:root/init.qcom.rc \
    device/zte/n919/ramdisk/ueventd.qcom.rc:root/ueventd.qcom.rc \
    device/zte/n919/ramdisk/init.qcom.sh:root/init.qcom.sh \
    device/zte/n919/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    device/zte/n919/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    device/zte/n919/ramdisk/init.target.rc:root/init.target.rc \
    device/zte/n919/ramdisk/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
    device/zte/n919/ramdisk/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
    device/zte/n919/ramdisk/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
    device/zte/n919/ramdisk/adbd:root/sbin/adbd
    device/zte/n919/ramdisk/charger:root/charger
    device/zte/n919/ramdisk/nv_set:root/nv_set
    device/zte/n919/ramdisk/rmt_storage_recovery:root/rmt_storage_recovery

PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athtcmd_ram.bin \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/athwlan.bin \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/bdata.bin \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-4.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/fw-4.bin \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/nullTestFlow.bin \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/softmac:system/etc/firmware/ath6k/AR6003/hw2.1.1/softmac \
    device/zte/n919/prebuilt/system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin:system/etc/firmware/ath6k/AR6003/hw2.1.1/utf.bin \
    device/zte/n919/prebuilt/system/lib/modules/cfg80211.ko:system/lib/modules/cfg80211.ko \
    device/zte/n919/prebuilt/system/lib/modules/ar6000.ko:system/lib/modules/ar6000.ko

PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/zte/n919/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    device/zte/n919/prebuilt/system/etc/init.qcom.composition_type.sh:system/etc/init.qcom.composition_type.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    device/zte/n919/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    device/zte/n919/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/zte/n919/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/zte/n919/prebuilt/system/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.post_fs.sh:system/etc/init.qcom.post_fs.sh \
    device/zte/n919/prebuilt/system/etc/init.target.8x25.sh:system/etc/init.target.8x25.sh \
    device/zte/n919/prebuilt/system/etc/init.qcom.thermald_conf.sh:system/etc/init.qcom.thermald_conf.sh \
    device/zte/n919/prebuilt/system/etc/thermald-8x25-msm1-pmic_therm.conf:system/etc/thermald-8x25-msm1-pmic_therm.conf \
    device/zte/n919/prebuilt/system/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    device/zte/n919/prebuilt/system/etc/qosmgr_rules.xml:system/etc/qosmgr_rules.xml

PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/zte/n919/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/usr/idc/Synaptics-RMI4.idc:system/usr/idc/Synaptics-RMI4.idc \
    device/zte/n919/prebuilt/system/usr/keychars/7x27a_kp.kcm:system/usr/keychars/7x27a_kp.kcm \
    device/zte/n919/prebuilt/system/usr/keylayout/7x27a_kp.kl:system/usr/keylayout/7x27a_kp.kl \
    device/zte/n919/prebuilt/system/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/zte/n919/prebuilt/system/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/zte/n919/prebuilt/system/usr/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/zte/n919/prebuilt/system/usr/keylayout/atmel_mxt_ts.kl:system/usr/keylayout/atmel_mxt_ts.kl \
    device/zte/n919/prebuilt/system/usr/keylayout/ft5x06_ts.kl:system/usr/keylayout/ft5x06_ts.kl \
    device/zte/n919/prebuilt/system/usr/keylayout/surf_keypad.kl:system/usr/keylayout/surf_keypad.kl

# if we use .34 kernel change 
PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/zte/n919/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/zte/n919/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/zte/n919/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/zte/n919/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/zte/n919/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/zte/n919/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
    device/zte/n919/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so
PRODUCT_COPY_FILES += \
    device/zte/n919/prebuilt/system/lib/hw/gralloc.msm7627a.so:system/lib/hw/gralloc.msm7627a.so \
    device/zte/n919/prebuilt/system/lib/hw/hwcomposer.msm7627a.so:system/lib/hw/hwcomposer.msm7627a.so \
    device/zte/n919/prebuilt/system/lib/libgenlock.so:system/lib/libgenlock.so \
    device/zte/n919/prebuilt/system/lib/libmemalloc.so:system/lib/libmemalloc.so \
    device/zte/n919/prebuilt/system/lib/liboverlay.so:system/lib/liboverlay.so \
$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := cm_n919
PRODUCT_DEVICE := n919
PRODUCT_BRAND := ZTE

