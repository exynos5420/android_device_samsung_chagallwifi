# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from chagallwifi device
$(call inherit-product, device/samsung/chagallwifi/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_chagallwifi
PRODUCT_DEVICE := chagallwifi
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T800
