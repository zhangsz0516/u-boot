## 编译命令

./make.sh atompi-ca1

make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- atompi-ca1_defconfig

make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- menuconfig

make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- savedefconfig

cp defconfig configs/atompi-ca1_defconfig

./make.sh 



## 总体编译
./make.sh atompi-ca1

## 打包 Loader
./make.sh --spl


## 启动 rt-smart

```shell
setenv bootargs 'earlycon=uart8250,mmio32,0xfeb50000 console=ttyFIQ0'
setenv bootcmd 'ext4load mmc 0:1 0x480000 /rtthread.bin;ext4load mmc 0:1 0x8300000 rk3588-orangepi-5-plus.dtb;booti 0x480000 - 0x8300000'

saveenv
Saving Environment to MMC...
Writing to MMC(0)... done
reset
```

