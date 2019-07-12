THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

export ARCHS = arm64
TWEAK_NAME = fritzer
fritzer_FILES = Tweak.xm
BUNDLE_NAME = com.chester.fritzer
com.chester.fritzer_INSTALL_PATH = /Library/MobileSubstrate/DynamicLibraries
include $(THEOS)/makefiles/common.mk
include $(THEOS)/makefiles/bundle.mk
include $(THEOS_MAKE_PATH)/tweak.mk
after-install::
	install.exec "killall -9 Camera"
