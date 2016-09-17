#
# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/samsung/chagalllte

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_CHARACTERISTICS := tablet
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Audio
PRODUCT_PACKAGES += \
    audio.primary.universal5420 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    mixer_paths.xml \
    tinymix

PRODUCT_COPY_FILES += \
    device/samsung/chagalllte/audio/audio_policy.conf:system/etc/audio_policy.conf

PRODUCT_COPY_FILES += \
    device/samsung/chagalllte/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Boot animation
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1600

PRODUCT_PACKAGES += \
    libsamsung_symbols

# boringssl-compat
PRODUCT_PACKAGES += \
    libboringssl-compat

# Gello
#PRODUCT_PACKAGES += \
#    Gello

# Camera
PRODUCT_PACKAGES += \
    camera.universal5420 \
    libhwjpeg

PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1


# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    persist.adb.notify=0 \
    ro.secure=0 \
    persist.sys.root_access=3 \
    ro.debuggable=1 \
    persist.service.adb.enable=1

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    make_f2fs \
    e2fsck \
    setup_fs

# GPS
PRODUCT_PACKAGES += \
    gps.universal5420 \
    libdmitry

# HW composer
PRODUCT_PACKAGES += \
    libion \
    gralloc.exynos5

# IR
PRODUCT_PACKAGES += \
    consumerir.universal5420

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true

# Cacert Root Certificate
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/security/cacerts/5ed36f99.0:system/etc/security/cacerts/5ed36f99.0 \
    $(LOCAL_PATH)/ramdisk/security/cacerts/e5662767.0:system/etc/security/cacerts/e5662767.0

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps.xml:system/etc/gps.xml

# Keystore
PRODUCT_PACKAGES += \
    keystore.exynos5

# libstlport
# M removes libstlport, but some of our binary-only prebuilts need it, so we'll
# add it back
PRODUCT_PACKAGES += \
    libstlport

# Lights
PRODUCT_PACKAGES += \
    lights.universal5420

# Media profile
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# simple kernel module load script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/01moduleload:system/etc/init.d/01moduleload

# simple script for system tuning
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/10systemtuning:system/etc/init.d/10systemtuning

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# MobiCore setup
PRODUCT_PACKAGES += \
    libMcClient \
    libMcRegistry \
    libPaApi \
    libgdmcprov

# Network tools

PRODUCT_PACKAGES += \
    libpcap \
    tcpdump

# OMX
PRODUCT_PACKAGES += \
    libcsc

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Power
PRODUCT_PACKAGES += \
    power.universal5420

PRODUCT_PACKAGES += \
    fstab.universal5420 \
    init.samsung.rc \
    init.universal5420.rc \
    init.universal5420.power.rc \
    init.universal5420.usb.rc \
    init.universal5420.wifi.rc \
    init.baseband.rc \
    ueventd.universal5420.rc

# Radio (needed for audio controls even on wifi-only)
PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    libril \
    librilutils \
    rild 

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.universal5420.rc

# Sensors
PRODUCT_PACKAGES += \
    sensors.universal5420

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    libwpa_client \
    wpa_supplicant

PRODUCT_PACKAGES += \
    libnetcmdiface \
    macloader \
    modemloader


PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown 

# CPU producer to CPU consumer not supported 
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bq.gpu_to_cpu_unsupported=1

#Fingerprint Sensor
PRODUCT_PACKAGES += \
    fingerprint.default

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=bfq

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sys.fw.dex2oat_thread_count=4

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.dex2oat-swap=false

# Storage
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.sdcardfs.enable=true

# cpboot-daemon for modem
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ril/sbin/cbd:root/sbin/cbd

# SuperSU
PRODUCT_COPY_FILES += \
    vendor/aicp/prebuilt/common/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
    vendor/aicp/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon

# call dalvik heap config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5420/exynos5420.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/chagalllte/chagalllte-vendor.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/tabs-common/tabs-common-vendor.mk)
