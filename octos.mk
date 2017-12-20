LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit OctOs
$(call inherit-product, vendor/octos/config/common_full_phone.mk)

# Inherit from serranolteusc device
$(call inherit-product, device/samsung/serranolteusc/device.mk)

PRODUCT_NAME := octos_serranolteusc
PRODUCT_DEVICE := serranolteusc
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SCH-R890

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=serranolteusc \
    BUILD_FINGERPRINT="samsung/serranolteusc/serranolteusc:4.4.2/KOT49H/R890TYUBPD2:user/release-keys" \
PRIVATE_BUILD_DESC="serranolteusc-user 4.4.2 KOT49H R890TYUBPD2 release-keys"
