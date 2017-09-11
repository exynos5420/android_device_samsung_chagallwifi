# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from klimtwifi device
$(call inherit-product, device/samsung/chagallwifi/device.mk)

PRODUCT_BRAND := samsung

PRODUCT_NAME := aosp_chagallwifi
PRODUCT_DEVICE := chagallwifi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T800 \
    PRODUCT_NAME=chagallwifi \
    PRODUCT_DEVICE=chagallwifi \
    TARGET_DEVICE=chagallwifi

BUILD_FINGERPRINT=samsung/chagallwifi/chagallwifi:6.0.1/MMB29K/T800DDU1CPL3:user/release-keys
