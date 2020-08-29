DEBUG = 0
TARGET = iphone:clang:latest:7.0
ARCHS = arm64e armv7 arm64
INSTALL_TARGET_PROCESSES = Uptime

include $(THEOS)/makefiles/common.mk

XCODEPROJ_NAME = Uptime
Uptime_XCODEFLAGS = SWIFT_OLD_RPATH=/usr/lib/libswift/stable
Uptime_XCODE_SCHEME = Uptime
Uptime_CODESIGN_FLAGS = -SuptimeEntitlements.xml

include $(THEOS_MAKE_PATH)/xcodeproj.mk