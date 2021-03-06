#
# Copyright (C) 2019 The LineageOS Project
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

# Inherit from those products. Most specific first.
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
# $(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit some common Halium stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/halium.mk)

# Inherit from j6primelte device
# $(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, device/samsung/j6primelte/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := j6primelte
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_j6primelte
PRODUCT_MODEL := Galaxy J6+

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := j4primelte
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="j6primeltedx-user 9 PPR1.180610.011 J610GUBU4BTC3 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "samsung/j6primeltedx/j6primelte:9/PPR1.180610.011/J610GUBU4BTC3:user/release-keys"
