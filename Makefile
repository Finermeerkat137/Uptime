DEBUG = 0
FINALRELEASE = 1
TARGET = iphone:clang:latest:7.0
ARCHS = arm64e armv7 arm64
INSTALL_TARGET_PROCESSES = Uptime
THEOS_DEVICE_IP = 192.168.1.209

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = Uptime
Uptime_XCODEFLAGS = SWIFT_OLD_RPATH=/usr/lib/libswift/stable
Uptime_XCODE_SCHEME = Uptime
Uptime_CODESIGN_FLAGS = -SuptimeEntitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk
