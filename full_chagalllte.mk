# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from chagalllte device
$(call inherit-product, device/samsung/chagalllte/device.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_chagalllte
PRODUCT_DEVICE := chagalllte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-T805
