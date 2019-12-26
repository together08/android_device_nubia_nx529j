#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-mokee

# call the proprietary setup
$(call inherit-product-if-exists, vendor/nubia/nx529j/nx529j-vendor.mk)

# Audio
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.0-service-custom

# Keylaouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gf5216m.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/gf5216m.kl \
    $(LOCAL_PATH)/keylayout/nubia_synaptics_dsx.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/nubia_synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/synaptics_btn.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/synaptics_btn.kl

# Inherit from nubia msm8952-common
$(call inherit-product, device/nubia/msm8952-common/msm8952.mk)
