# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit device configuration
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mirage/config/common_full_phone.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mirage/config/gsm.mk)

# Inherit torch settings
$(call inherit-product, vendor/mirage/config/common_ledflash.mk)

# Inherit device settings
$(call inherit-product, vendor/mirage/config/common_nexus.mk)

PRODUCT_COPY_FILES +=  \
    vendor/mirage/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

# Release name
PRODUCT_RELEASE_NAME := maguro

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=yakju BUILD_FINGERPRINT="google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys"
PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys"

PRODUCT_NAME := mirage_maguro
PRODUCT_DEVICE := maguro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
