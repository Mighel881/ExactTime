PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
export TARGET = iphone:clang:13.0:13.0

TWEAK_NAME = ExactTime ExactTimeMail ExactTimePhone ExactTimeMessages
ExactTime_FILES = ExactTime.xm
ExactTime_CFLAGS = -fobjc-arc

ExactTimeMail_FILES = ExactTimeMail.x
ExactTimeMail_CFLAGS = -fobjc-arc

ExactTimePhone_FILES = ExactTimePhone.x
ExactTimePhone_CFLAGS = -fobjc-arc

ExactTimeMessages_FILES = ExactTimeMessages.xm
ExactTimeMessages_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += exacttimeprefs
include $(THEOS)/makefiles/aggregate.mk
