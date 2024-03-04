## 编译方法

- `$ ./mk.sh rock5b-rk3588_defconfig` 注意这里需要 _defconfig

- `$ ./mk.sh -j8`

## rk 编译需要额外的bin 文件

- 尝试使用 make.sh 进行编译

- 尝试解决编译问题

- 尝试下载到开发板运行

## rockchip 编译 u-boot

- `./make.sh rock5b-rk3588`

- 当前编译失败：

```c
  BINMAN  .binman_stamp
Image 'simple-bin' is missing external blobs and is non-functional: rockchip-tpl atf-bl31

/binman/simple-bin/mkimage/rockchip-tpl (rockchip-tpl):
   An external TPL is required to initialize DRAM. Get the external TPL
   binary and build with ROCKCHIP_TPL=/path/to/ddr.bin. One possible source
   for the external TPL binary is https://github.com/rockchip-linux/rkbin.

/binman/simple-bin/fit/images/@atf-SEQ/atf-bl31 (atf-bl31):
   See the documentation for your board. You may need to build ARM Trusted
   Firmware and build with BL31=/path/to/bl31.bin

Image 'simple-bin' is missing optional external blobs but is still functional: tee-os

/binman/simple-bin/fit/images/@tee-SEQ/tee-os (tee-os):
   See the documentation for your board. You may need to build Open Portable
   Trusted Execution Environment (OP-TEE) and build with TEE=/path/to/tee.bin

Image 'simple-bin-spi' is missing external blobs and is non-functional: rockchip-tpl

/binman/simple-bin-spi/mkimage/rockchip-tpl (rockchip-tpl):
   An external TPL is required to initialize DRAM. Get the external TPL
   binary and build with ROCKCHIP_TPL=/path/to/ddr.bin. One possible source
   for the external TPL binary is https://github.com/rockchip-linux/rkbin.

Some images are invalid
make: *** [Makefile:1125: .binman_stamp] Error 103
```







