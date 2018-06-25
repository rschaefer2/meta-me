FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://0001-Fix-embedded-linux-no-opengl-build.patch"

DEPENDS += "opengl-headers"
