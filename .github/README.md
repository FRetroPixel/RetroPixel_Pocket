An open source firmware for the RetroPixel Pocket compatible devices

Supported Devices
RetroPixel Pocket

RetroPixel  is a fork of AmberELEC  which is based on  351ELEC ,CoreELEC, Lakka, and Batocera.

Caution

Do not replace or rename any of the .dtb files after flashing a new image or updating from an older RetroPixel release. To simplify the process and reduce complexity, we're determining which display the device is using, so no manual interaction is necessary.

Building from Source
Building RetroPixel from source is a fairly simple process. It is recommended to have a minimum of 4 cores, 16GB of RAM, and an SSD with 200GB of free space. The build environment used to develop these steps uses Ubuntu 20.04, your mileage may vary when building on other distributions.

Important
On Ubuntu 20.04 it's required to add the following apt-repository as golang 1.17 or higher is required for building RetroPixel:
sudo add-apt-repository ppa:longsleep/golang-backports

sudo apt update && sudo apt upgrade

sudo apt install gcc make git unzip wget xz-utils libsdl2-dev libsdl2-mixer-dev libfreeimage-dev libfreetype6-dev libcurl4-openssl-dev rapidjson-dev libasound2-dev libgl1-mesa-dev build-essential libboost-all-dev cmake fonts-droid-fallback libvlc-dev libvlccore-dev vlc-bin texinfo premake4 golang libssl-dev curl patchelf xmlstarlet patchutils gawk gperf xfonts-utils default-jre python xsltproc libjson-perl lzop libncurses5-dev device-tree-compiler u-boot-tools rsync p7zip unrar libparse-yapp-perl zip binutils-aarch64-linux-gnu dos2unix p7zip-full libvpx-dev meson rdfind

git clone https://github.com/FRetroPixel/RetroPixel_Pocket.git RETRO_PIXEL_POCKET

cd RETRO_PIXEL_POCKET

Download the additional source code package from the MEGA drive.(Some package sources are no longer available, or the source code modified for some compatible machines has not yet been synchronized. Therefore, manual download is required..)
https://mega.nz/file/SZVmkZjA#xS3yfDuNqdYgsD3qGPKywyvkhu5r4Vc4k9Cb7ru7_P8

copy extpackage floader to RETRO_PIXEL_POCKET/

make distclean

make RPPOCKET

The make RPPOCKET process will build and generate a image. Follow the installation steps to write your image to a microSD. It will build for the RPPOCKET.

This repository is a modified version of [https://github.com/AmberELEC/AmberELEC], with the main changes being: 1. Adaptation to RETROPIXEL Pocket devices. December 2025

