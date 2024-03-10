#!/bin/bash

source ./env_arm.sh

#make ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- $1 $2 $3 $4
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- mrproper
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- mx6q_topeet_defconfig
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j8

