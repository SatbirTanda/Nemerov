ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

BUNDLE_NAME = Nemerov
Nemerov_FILES = Nemerov.mm
Nemerov_INSTALL_PATH = /Library/PreferenceBundles
Nemerov_FRAMEWORKS = UIKit CoreGraphics
Nemerov_PRIVATE_FRAMEWORKS = Preferences
Nemerov_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/Nemerov.plist$(ECHO_END)
