#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a50 device
$(call inherit-product, device/samsung/a50/device.mk)

PRODUCT_DEVICE := a50
PRODUCT_NAME := lineage_a50
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A505F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a50dd-user 9 PPR1.180610.011 A505FDDS4ATC1 release-keys"

BUILD_FINGERPRINT := samsung/a50dd/a50:9/PPR1.180610.011/A505FDDS4ATC1:user/release-keys
