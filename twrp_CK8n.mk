#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CK8n device
$(call inherit-product, device/tran/mt6893/device.mk)

PRODUCT_DEVICE := CK8n
PRODUCT_NAME := twrp_CK8n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO Camon 20 Pro 5G
PRODUCT_MANUFACTURER := TECNO

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_ck8nu_h931-user 12 SP1A.210812.016 561264 release-keys"

BUILD_FINGERPRINT := TECNO/CK8n-GL/TECNO-CK8n:12/SP1A.210812.016/240313V339:user/release-keys