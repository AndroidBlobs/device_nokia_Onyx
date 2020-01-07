# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Onyx device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nokia
PRODUCT_DEVICE := Onyx
PRODUCT_MANUFACTURER := nokia
PRODUCT_NAME := lineage_Onyx
PRODUCT_MODEL := Nokia 7 plus

PRODUCT_GMS_CLIENTID_BASE := android-nokia
TARGET_VENDOR := nokia
TARGET_VENDOR_PRODUCT_NAME := Onyx
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="B2N_00WW_FIH-user 10 QKQ1.190828.002 00WW_4_10C release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/Onyx_00WW/B2N_sprout:10/QKQ1.190828.002/00WW_4_10C:user/release-keys
