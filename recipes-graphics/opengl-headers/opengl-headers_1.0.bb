#
# This file was derived from the 'Hello World!' example recipe in the
# Yocto Project Development Manual.
#

DESCRIPTION = "Provides opengl headers"
DEPENDS = ""
LICENSE = "GPLv3"
LIC_FILES_CHKSUM = "file://LICENSE.GPL3;md5=d32239bcb673463ab874e80d47fae504"

SRCREV = "fe2807312ff3d2285b51a4de363b1c1fb8d85f82"
SRC_URI = "git://code.qt.io/qt/qtdeclarative-render2d.git;branch=5.7"

S = "${WORKDIR}/git"

do_compile() {
    :
}

do_install() {
    install -d ${D}${includedir}
    cp -r ${S}/tools/opengldummy/3rdparty/include/* ${D}${includedir}/
}
