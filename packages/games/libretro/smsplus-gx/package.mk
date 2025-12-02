# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2020-present AmberELEC (https://github.com/AmberELEC)

PKG_NAME="smsplus-gx"
PKG_VERSION="60af17ddb2231ba98f4ed1203e2a2f58d08ea088"
PKG_SHA256="51123f752b1883c1a0ba5049e4117ee87cc21561aad0972969b92a6500e5d597"

PKG_SITE="file://${OLDPWD}/extpackage/smsplus-gx-60af17ddb2231ba98f4ed1203e2a2f58d08ea088"
PKG_LICENSE="Non-commercial"
#PKG_SITE="https://github.com/libretro/smsplus-gx"
#PKG_URL="${PKG_SITE}/archive/${PKG_VERSION}.tar.gz"
PKG_URL="${PKG_SITE}"
PKG_DEPENDS_TARGET="toolchain"
PKG_LONGDESC="SMS Plus is an open-source Sega Master System and Game Gear emulator written by Charles MacDonald."
PKG_TOOLCHAIN="make"

make_target() {
  if [ "${ARCH}" == "arm" ]; then
    CFLAGS="${CFLAGS} -DALIGN_LONG"
  fi
  make -f Makefile.libretro
}

makeinstall_target() {
  mkdir -p ${INSTALL}/usr/lib/libretro
  cp smsplus_libretro.so ${INSTALL}/usr/lib/libretro/
}
