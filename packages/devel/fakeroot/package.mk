# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2019-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="fakeroot"
PKG_VERSION="1.33"
PKG_SHA256="e157d8e5c64d3a755707791e9be93296c6d249d5c4478bf941b675d49c47757d"
PKG_LICENSE="GPL3"
PKG_SITE="file://${OLDPWD}/extpackage/fakeroot/fakeroot-1.33.tar.gz"
PKG_URL="${PKG_SITE}"

PKG_DEPENDS_HOST="ccache:host libcap:host autoconf:host libtool:host"
PKG_LONGDESC="fakeroot provides a fake root environment by means of LD_PRELOAD and SYSV IPC (or TCP) trickery."
PKG_TOOLCHAIN="configure"

PKG_CONFIGURE_OPTS_HOST="--with-gnu-ld"

pre_configure_host() {
  cd ${PKG_BUILD}
  ./bootstrap
}
