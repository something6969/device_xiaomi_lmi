# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lmi device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_lmi
PRODUCT_MODEL := POCO F2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := lmi
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="akihabara_lmi-userdebug 13 TQ1A.230105.001.A2 eng.build.20230201.193033 test-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/akihabara_lmi/lmi:13/TQ1A.230105.001.A2/build02011844:userdebug/test-keys
