PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
export TARGET = iphone:clang:13.0:13.0

BUNDLE_NAME = ExactTimeprefs
ExactTimeprefs_FILES = ExactTimeprefs.mm
ExactTimeprefs_INSTALL_PATH = /Library/PreferenceBundles
ExactTimeprefs_FRAMEWORKS = UIKit
ExactTimeprefs_PRIVATE_FRAMEWORKS = Preferences
ExactTimeprefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/ExactTimeprefs.plist$(ECHO_END)
