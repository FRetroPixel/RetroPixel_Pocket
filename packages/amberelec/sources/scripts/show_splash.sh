#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2024-present AmberELEC (https://github.com/AmberELEC)

. /etc/profile

DEVICE=$(tr -d '\0' < /sys/firmware/devicetree/base/model)

if [ "$DEVICE" == "Anbernic RG351P" ]; then
  magick /usr/config/splash/splash-480.png bgra:/dev/fb0
elif [ "$DEVICE" == "Anbernic RG552" ]; then
  ply-image /usr/config/splash/splash-1920.png
else
#mount -o remount,rw /flash

#mount -t ext4 /dev/mmcblk0p1 /mosdev
echo "1111111111111111"


if [ -d /storage/back ]; then
		echo "/storage/back ok"
	else
	{
		mkdir -p /storage/back
		cp /back/backapp /storage/back
		cp /back/config_backlight.txt /storage/back
		chmod 777 /storage/back/config_backlight.txt
		chmod 777 /storage/back/backapp
		
	}
fi

echo 7 > /proc/sys/kernel/printk
# cd /storage/back
# ./backapp &

#系统音量调80%
# amixer sset Playback 189
# amixer set 'Playback' 20%
#echo 0 > /sys/class/gpio/gpio69/value

magick /usr/config/splash/splash-640.png bgra:/dev/fb0
 #magick /usr/config/splash/blank.png bgra:/dev/fb0
  #打开amp
#echo 1 >  /sys/class/gpio/gpio117/value
#echo 0 > /sys/class/gpio/gpio114/value
#killall -SIGUSR1 emulationstation
fi
