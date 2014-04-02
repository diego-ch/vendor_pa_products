ifeq (pa_janice,$(TARGET_PRODUCT))
# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA common configuration
# Inherit AOSP device configuration for galaxys advance.
$(call inherit-product, device/samsung/janice/janice.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/janice/full_janice.mk)

# Include AOSPA common configuration
include vendor/pa/main.mk

# Setup device specific product configuration.
PRODUCT_DEVICE := janice
PRODUCT_NAME := pa_janice
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := GT-I9070

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9070 TARGET_DEVICE=GT-I9070
PRODUCT_RELEASE_NAME := GT-I9070

# Copy janice specific prebuilt files
PRODUCT_PACKAGES += \
    Thinkfree

endif
