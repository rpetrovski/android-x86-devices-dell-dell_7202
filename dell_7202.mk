#
# Copyright (C) 2014 The Android-x86 Open Source Project
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

# includes the base of Android-x86 platform

$(call inherit-product,device/generic/x86/android_x86.mk)


PRODUCT_COPY_FILES += \
    device/dell/dell_7202/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    device/dell/dell_7202/etc/updatecmds/google_generic_update.txt:system/etc/updatecmds/google_generic_update.txt \
    device/dell/dell_7202/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    device/dell/dell_7202/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    device/dell/dell_7202/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd \
    device/dell/dell_7202/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

TARGET_SYSTEM_PROP := device/dell/dell_7202/system.prop

# Overrides
PRODUCT_NAME := dell_7202
PRODUCT_BRAND := Android-x86
PRODUCT_DEVICE := dell_7202
PRODUCT_MODEL := Dell Lattitude 12 rugged tablet x86

PRODUCT_PACKAGES := $(filter-out QuickSearchBox, $(PRODUCT_PACKAGES))
PRODUCT_PACKAGES := $(filter-out Provision, $(PRODUCT_PACKAGES))
PRODUCT_PACKAGES := $(filter-out OneTimeInitializer, $(PRODUCT_PACKAGES))

