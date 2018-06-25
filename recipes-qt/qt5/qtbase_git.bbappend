# Add x11 support only when building for x86
PACKAGECONFIG_X11 = "${@bb.utils.contains('DISTRO_FEATURES', 'x11', 'xcb xrender xinput2 glib xkb xkbcommon-evdev', '', d)}"
# Need to manually insert linuxfb support
PACKAGECONFIG := "\
    release dbus udev evdev widgets libs freetype openssl jpeg libpng zlib linuxfb\
    ${PACKAGECONFIG_X11} \
    "
PACKAGECONFIG[xcb] = "-xcb -system-xcb,-no-xcb,libxcb xcb-util-wm xcb-util-image xcb-util-keysyms xcb-util-renderutil"
# accessibility needed to build qtquickcontrols
PACKAGECONFIG += "accessibility"

# Freescale's qtbase overlay auto-adds eglfs for us; remove:
QT_CONFIG_FLAGS_remove = "-eglfs"
QT_CONFIG_FLAGS_append = " -no-opengl"
