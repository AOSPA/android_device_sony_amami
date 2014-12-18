# Copyright 2014 The Android Open Source Project
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

TARGET_PREBUILT_KERNEL := kernel
PRODUCT_COPY_FILES += $(LOCAL_PATH)/$(TARGET_PREBUILT_KERNEL):kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)
$(call inherit-product, device/sony/rhine/device.mk)
$(call inherit-product, vendor/sony/amami/amami-vendor.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/amami/overlay

PRODUCT_COPY_FILES += \
    device/sony/amami/rootdir/system/etc/flashled_calc_parameters.cfg:system/etc/flashled_calc_parameters.cfg \
    device/sony/amami/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/amami/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/amami/rootdir/logo.rle:root/logo.rle \
    device/sony/amami/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf \
    device/sony/amami/rootdir/system/etc/sensors_calib.conf:system/etc/sensors_calib.conf

PRODUCT_NAME := aosp_d5503
PRODUCT_DEVICE := amami
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Z1 Compact (AOSP)
PRODUCT_LOCALES += xhdpi hdpi
PRODUCT_MANUFACTURER := Sony

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

