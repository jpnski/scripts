#! /bin/bash

# mounts specified storage device (SD card) of specified filesystem type to specified mount point

MOUNT_POINT="/mnt/SD"
FS_TYPE="vfat"
DEVICE="/dev/mmcblk0p1"

sudo mount -t $FS_TYPE $DEVICE $MOUNT_POINT 
