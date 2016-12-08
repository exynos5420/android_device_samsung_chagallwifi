# Inherit device configuration
$(call inherit-product, device/samsung/chagalllte/full_chagalllte.mk)

# Inherit some common LD stuff.
$(call inherit-product, vendor/ld/config/common_full_phone.mk)

PRODUCT_NAME := ld_chagalllte
PRODUCT_DEVICE := chagalllte

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_MODEL=SM-T805 \
    PRODUCT_NAME=chagalllte \
    PRODUCT_DEVICE=chagalllte \
    TARGET_DEVICE=chagalllte