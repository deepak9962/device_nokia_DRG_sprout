# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common AOSP stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from  device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Set Shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Boot Animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2280

PRODUCT_BRAND := Nokia
PRODUCT_DEVICE := DRG_sprout
PRODUCT_MANUFACTURER := HMD Global
PRODUCT_NAME := aosp_DRG_sprout
PRODUCT_MODEL := Nokia 6.1 Plus

PRODUCT_GMS_CLIENTID_BASE := android-hmd

TARGET_VENDOR := nokia

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=DRG_sprout\
    PRIVATE_BUILD_DESC="DRG_sprout 12 SQ1D.220105.007 1833 release-keys"

BUILD_FINGERPRINT := Nokia/DRG_sprout/DRG_sprout:12/SQ1D.220105.007/1833:userdebug/release-keys
