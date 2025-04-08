$(call inherit-product, device/brcm/rpi4/aosp_rpi4.mk)

PRODUCT_NAME := raspdroid
PRODUCT_DEVICE := raspdroid
PRODUCT_MANUFACTURER := rasp-droid
PRODUCT_MODEL := Raspdroid IHM
PRODUCT_BRAND := Raspdroid

MODULE_BUILD_FROM_SOURCE := true

# Configure TCP port for using ADB over WI-FI
PRODUCT_PRODUCT_PROPERTIES += persist.adb.tcp.port=5555

#Configure SerialPort HAL
PRODUCT_PACKAGES += \
	vendor.raspdroid.serialport-service	\
	vendor.raspdroid.serialport-test

#Configure SerialPort Service and API
PRODUCT_PACKAGES += \
	SerialPortService	\
	vendor.raspdroid.serialportmanager