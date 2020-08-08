include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CydiaXI
CydiaXI_FILES = Tweak.xm
CydiaXI_FRAMEWORKS = UIKit

include $(THEOS)/makefiles/tweak.mk

after-install::
	install.exec "killall -9 Cydia"
