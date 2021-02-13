#
# system.prop for chagallwifi
#

# UI
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=yes

# Randomly from stock
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.gprsclass=10 \
    ro.ril.hsxpa=1 \
    ro.sec.fle.encryption=true \
    ro.secwvk=220

# SM-T800 Hardware Info
PRODUCT_PROPERTY_OVERRIDES += \
    ro.device.chipset=Exynos_5_Octa_5420 \
    ro.device.cpu=Octa-core,1900MHz,ARM_Cortex_A15_&_ARM_Cortex_A7 \
    ro.device.gpu=ARM_Mali-T628_MP6 \
    ro.device.rear_cam=8MP,1920x1080_(1080pHD)_(30fps) \
    ro.device.front_cam=2.1MP \
    ro.device.screen_res=2560x1600pixels_(288ppi_pixel_density)

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sdcardfs.enable=false