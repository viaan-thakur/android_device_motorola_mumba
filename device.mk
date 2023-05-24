#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Kernel
PRODUCT_ENABLE_UFFD_GC := true

# pKVM
$(call inherit-product, packages/modules/Virtualization/apex/product_packages.mk)

PRODUCT_BUILD_PVMFW_IMAGE := true

# Shipping API
BOARD_SHIPPING_API_LEVEL := 202404
PRODUCT_SHIPPING_API_LEVEL := 36

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    hardware/motorola

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/motorola/mumba/mumba-vendor.mk)
