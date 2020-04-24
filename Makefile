TARGET = iphone:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk
DEBUG=0
PACKAGE_VERSION=1.0.0
TWEAK_NAME = SETick
ARCHS = arm64 arm64e
SETick_FILES = Tweak.xm
include $(THEOS_MAKE_PATH)/tweak.mk

internal-stage::
	#Filter plist
	$(ECHO_NOTHING)if [ -f Filter.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/; cp Filter.plist $(THEOS_STAGING_DIR)/Library/MobileSubstrate/DynamicLibraries/SETick.plist; fi$(ECHO_END)
	#PreferenceLoader plist
	$(ECHO_NOTHING)if [ -f Preferences.plist ]; then mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SETick; cp Preferences.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SETick/; fi$(ECHO_END)

after-install::
	install.exec "killall -9 SpringBoard"