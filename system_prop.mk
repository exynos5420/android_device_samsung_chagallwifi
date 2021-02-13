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
    ro.device.chipset=Exynos 5 Octa 5420 \
    ro.device.cpu=Octa-core, 1900 MHz, ARM Cortex-A15 & ARM Cortex-A7 \
    ro.device.gpu=ARM Mali-T628 MP6 \
    ro.device.rear_cam=8 MP, 1920x1080 (1080p HD) (30 fps) \
    ro.device.front_cam=2.1 MP \
    ro.device.screen_res=2560 x 1600 pixels (288 ppi pixel density)

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sdcardfs.enable=false