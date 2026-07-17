#
# BestROM — pure AOSP Android 17 product for peridot
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# BestROM brand (AOSP 17)
$(call inherit-product, vendor/bestrom/config/common.mk)

# Device
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_NAME := bestrom_peridot
PRODUCT_DEVICE := peridot
PRODUCT_BRAND := BestROM
PRODUCT_MODEL := POCO F6
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := peridot_global
PRODUCT_SYSTEM_DEVICE := peridot

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=BestROM/peridot/peridot:17/CP2A.260605.016/eng.bestrom:user/release-keys \
    DeviceName=peridot \
    DeviceProduct=peridot_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_BOOT_ANIMATION_RES := 2560
BESTROM_BUILD_TYPE := UNOFFICIAL
