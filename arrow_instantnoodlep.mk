#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from instantnoodlep device
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Google Camera
$(call inherit-product, packages/apps/googlecamera/config.mk)

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
IS_PHONE := true
DEVICE_MAINTAINER := fKm86
TARGET_GAPPS_ARCH := arm64
TARGET_USES_FACE_UNLOCK := true

TARGET_SUPPORTS_BLUR := true
EXTRA_FOD_ANIMATIONS := true

PRODUCT_NAME := arrow_instantnoodlep
PRODUCT_DEVICE := instantnoodlep
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2023

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=OnePlus8Pro \
    PRODUCT_NAME=OnePlus8Pro_EEA \
    PRIVATE_BUILD_DESC="OnePlus8Pro-user 11   release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus8Pro/OnePlus8Pro:10/QKQ1.191222.002/2005301332:user/release-keys
