ARCHS = armv7 armv7s arm64

include theos/makefiles/common.mk

TWEAK_NAME = Nemerov
Nemerov_FILES = Tweak.xm Triforce.m HualosUIWindow.m StarOfDavid.m Cross.m Ottoman.m Star.m YinYang.m Sunburst.m
Nemerov_FRAMEWORKS = UIKit CoreGraphics
Nemerov_LDFLAGS += -Wl,-segalign,4000
Nemerov_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += nemerov
include $(THEOS_MAKE_PATH)/aggregate.mk
