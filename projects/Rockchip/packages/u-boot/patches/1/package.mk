# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
# Copyright (C) 2017-present Team LibreELEC (https://libreelec.tv)

PKG_NAME="u-boot"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SITE="https://www.denx.de/wiki/U-Boot"
PKG_DEPENDS_TARGET="toolchain swig:host rkbin"
PKG_LONGDESC="Das U-Boot is a cross-platform bootloader for embedded systems."

PKG_IS_KERNEL_PKG="yes"
PKG_STAMP="${UBOOT_SYSTEM}"

PKG_NEED_UNPACK="${PROJECT_DIR}/${PROJECT}/bootloader"
[ -n "${DEVICE}" ] && PKG_NEED_UNPACK+=" ${PROJECT_DIR}/${PROJECT}/devices/${DEVICE}/bootloader"

if [[ "${DEVICE}" =~ RG351 ]]; then
 
#  PKG_VERSION="d8ad98256d4913bf39153a404f5e26e94cfe8b14"
# # PKG_VERSION="861913ea2be12c0ffdbeed6e61121df88afd6d70"
# PKG_VERSION="9a8aee14d4d5232c008168337472f60d8852bac7"
# PKG_VERSION="e22e8edce4ff991aac6e585d371cf704e3750956"
 PKG_VERSION="f28474958917f059a2937ceea0e4d7299e193f08"
  PKG_GIT_CLONE_SINGLE="yes"
  PKG_GIT_CLONE_DEPTH="1"
  PKG_URL="https://gitee.com/ycos/uboot_rg351mp.git"
  
# PKG_URL="https://github.com/rtosmos/uboot_rg351.git"
#  PKG_URL="https://github.com/AmberELEC/uboot_rg351.git"
  
#  PKG_URL="file:///home/li/RK3326/AmberELEC/sources/u-boot/u-boot-d8ad98256d4913bf39153a404f5e26e94cfe8b14"
#  PKG_SITE="${PKG_URL}"
#   PKG_URL="https://github.com/rtosmos/rk-u-boot.git"
elif [[ "${DEVICE}" =~ RG552 ]]; then
  PKG_VERSION="734ad933766f0dbbeafe1b27211686940a5e6d16"
  PKG_GIT_CLONE_BRANCH=v2022.01-rc4
  PKG_GIT_CLONE_SINGLE="yes"
  PKG_GIT_CLONE_DEPTH="1"
  PKG_URL="https://github.com/u-boot/u-boot.git"
fi

UBOOT_PATH=${PROJECT_DIR}/../sources/u-boot/u-boot-${PKG_VERSION}

post_patch() {
echo "john debug patch1"
  if [ -n "${UBOOT_SYSTEM}" ] && find_file_path bootloader/config; then
    PKG_CONFIG_FILE="${PKG_BUILD}/configs/$(${ROOT}/${SCRIPTS}/uboot_helper ${PROJECT} ${DEVICE} ${UBOOT_SYSTEM} config)"
    if [ -f "${PKG_CONFIG_FILE}" ]; then
      cat ${FOUND_PATH} >> "${PKG_CONFIG_FILE}"
    fi
  fi
}

patch_my_file() {
	echo 2222
  	echo ${UBOOT_SYSTEM}
    if [ -n "${UBOOT_SYSTEM}" ] ;then

    	echo "john debug patch2"
        echo ${UBOOT_PATH}
         echo ${PROJECT_DIR}
          echo ${PKG_BUILD}
      #  cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/adc.patch ${UBOOT_PATH}
     #  cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/ccv.patch ${UBOOT_PATH}
     #    cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/rg351mp-uboot.patch ${UBOOT_PATH}
          cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/bmp_helper.patch ${UBOOT_PATH}
         cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/rockchip_display_cmds.patch ${UBOOT_PATH}
         cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/rockchip_display.patch ${UBOOT_PATH}
         cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/video_rockchip.patch ${UBOOT_PATH}
	
	  cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/odroidgoa_power.patch ${UBOOT_PATH}
	
	#  cp ${PROJECT_DIR}/${PROJECT}/packages/u-boot/patches/odroidgoa.patch ${UBOOT_PATH}
	 cd ${UBOOT_PATH}
      # git apply  ${UBOOT_PATH}/adc.patch
    #   git apply ${UBOOT_PATH}/ccv.patch --whitespace=nowarn
#	 git apply  ${UBOOT_PATH}/rg351mp-uboot.patch
	 git apply  ${UBOOT_PATH}/rockchip_display_cmds.patch
	 git apply  ${UBOOT_PATH}/bmp_helper.patch
	 git apply  ${UBOOT_PATH}/rockchip_display.patch
	 git apply  ${UBOOT_PATH}/video_rockchip.patch
	 git apply  ${UBOOT_PATH}/odroidgoa_power.patch
	# git apply  ${UBOOT_PATH}/odroidgoa.patch
	cd -
    fi
}
make_target() {
  if [ -z "${UBOOT_SYSTEM}" ]; then
    echo "UBOOT_SYSTEM must be set to build an image"
    echo "see './scripts/uboot_helper' for more information"
  else
    [ "${BUILD_WITH_DEBUG}" = "yes" ] && PKG_DEBUG=1 || PKG_DEBUG=0
    DEBUG=${PKG_DEBUG} CROSS_COMPILE="${TARGET_KERNEL_PREFIX}" LDFLAGS="" ARCH=arm make mrproper
    DEBUG=${PKG_DEBUG} CROSS_COMPILE="${TARGET_KERNEL_PREFIX}" LDFLAGS="" ARCH=arm make $(${ROOT}/${SCRIPTS}/uboot_helper ${PROJECT} ${DEVICE} ${UBOOT_SYSTEM} config)
    echo "john debug make target"
    patch_my_file
    DEBUG=${PKG_DEBUG} CROSS_COMPILE="${TARGET_KERNEL_PREFIX}" LDFLAGS="" ARCH=arm _python_sysroot="${TOOLCHAIN}" _python_prefix=/ _python_exec_prefix=/ make HOSTCC="${HOST_CC}" HOSTLDFLAGS="-L${TOOLCHAIN}/lib" HOSTSTRIP="true" CONFIG_MKIMAGE_DTC_PATH="scripts/dtc/dtc"
  fi
}

makeinstall_target() {
    mkdir -p ${INSTALL}/usr/share/bootloader
    # Only install u-boot.img et al when building a board specific image
    if [ -n "${UBOOT_SYSTEM}" ]; then
      find_file_path bootloader/install && . ${FOUND_PATH}
    fi

    # Always install the update script
    find_file_path bootloader/update.sh && cp -av ${FOUND_PATH} ${INSTALL}/usr/share/bootloader

    # Always install the canupdate script
    if find_file_path bootloader/canupdate.sh; then
      cp -av ${FOUND_PATH} ${INSTALL}/usr/share/bootloader
      sed -e "s/@PROJECT@/${DEVICE:-${PROJECT}}/g" \
          -i ${INSTALL}/usr/share/bootloader/canupdate.sh
    fi
    if [ "${DEVICE}" == "RG351P" ]; then
      cp -f ${PKG_BUILD}/arch/arm/dts/rg351p-uboot.dtb ${INSTALL}/usr/share/bootloader
    elif [ "${DEVICE}" == "RG351V" ]; then
      cp -f ${PKG_BUILD}/arch/arm/dts/rg351v-uboot.dtb ${INSTALL}/usr/share/bootloader
    elif [ "${DEVICE}" == "RG351MP" ]; then
      cp -f ${PKG_BUILD}/arch/arm/dts/rg351mp-uboot.dtb ${INSTALL}/usr/share/bootloader
    fi
}
