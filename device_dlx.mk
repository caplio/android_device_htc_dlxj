$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/htc/dlxj/dlx-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/dlxj/overlay

LOCAL_PATH := device/htc/dlxj
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernAl
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    device/htc/dlxj/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/dlxj/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/dlxj/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging

PRODUCT_COPY_FILES += \
    device/htc/dlxj/ramdisk/ueventd.target.rc:recovery/root/ueventd.target.rc \
    device/htc/dlxj/ramdisk/ueventd.rc:recovery/root/ueventd.rc

#$(call inherit-product, build/target/product/full.mk)

PRODUCT_NAME := HTL21
PRODUCT_BRAND := HTC
