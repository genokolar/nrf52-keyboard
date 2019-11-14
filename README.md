# nrf52-keyboard

## Overview

This is a TMK keyboard firmware for nRF52810, nRF51822 version see [here](https://github.com/Lotlab/nrf51822-keyboard).

## 概述

这是一个基于nrf52蓝牙键盘的固件，使用了nRF SDK 15.3作为底层硬件驱动，并使用TMK键盘库作为键盘功能的上部实现。

此固件中的USB部分和KeymapDownloader部分重用了 [nrf51822-keyboard](https://github.com/Lotlab/nrf51822-keyboard) 的代码。

## 目录结构
- application/ 固件相关
  - main/ 主程序
    - src/ 源码
      - ble/ 蓝牙相关代码
      - tmk/ tmk桥接相关
      - config/ 硬件配置相关
    - project/ 工程
  - bootloader/ 
    - src/ 源码
    - project/ 工程
- keyboard/ 各个键盘实现相关
- SDK/ nRF52 SDK
- tmk/ tmk core 相关
- usb/ USB部分代码

## 功能亮点

- 蓝牙/USB双模切换
- USB全键无冲
- 配列下载更新
- 电量上传
- 支持多媒体按键
- 耗电量低至400ua（使用lot60-ble硬件在关闭所有灯光条件下测得，不代表所有条件下的状态）
- 高度自定义的事件系统

## 硬件支持

当前支持nrf52810和nrf52832两种主控硬件，此固件支持的键盘列表见Keyboard目录。

## 编译

~~首先下载 [nRF5 SDK 15.3/16.0](https://www.nordicsemi.com/Software-and-Tools/Software/nRF5-SDK/Download#infotabs), 解压并放入SDK文件夹。~~
然后安装 gcc-arm-none-eabi-7-2018-q2-update，将template目录中对应平台的配置文件模板复制一份，重命名为`Makefile.posix`或`Makefile.windows`，修改里面工具路径为你的安装目录。
修改后的Makefile.posix & Makefile.windows 复制一份覆盖SDK/components/toolchain/gcc/下对应文件。
`如果使用自定义SDK，需要同步修改application/bootloader/project/armgcc/Makefile中LIB_FILES += \
  $(SDK_ROOT)/external/nrf_oberon/lib/cortex-m4/hard-float/liboberon_2.0.7.a \
  $(SDK_ROOT)/external/micro-ecc/nrf52hf_armgcc/armgcc/micro_ecc_lib_nrf52.a 对应路径`

然后安装 [SDCC](http://sdcc.sourceforge.net/) 用于编译CH554相关代码。

### Bootloader 的编译
参见[这篇文章](https://devzone.nordicsemi.com/b/blog/posts/getting-started-with-nordics-secure-dfu-bootloader)，先编译uECC库，然后再编译Bootloader

`注意：nrfutil 只支持Python2.x`

大概分几步：
  - nrfutil生成bootloader密钥
    ```bash
    nrfutil keys generate private.key
    nrfutil keys display --key pk --format code private.key --out_file public_key.c
    ```
  - 编译uECC 依赖uECC库，在SDK/external/micro-ecc/克隆uECC git仓库
    ```bash
    cd SDK/external/micro-ecc
    git clone https://github.com/kmackay/micro-ecc.git
    ./build_all.sh
    ``` 
  - 编译bootloader
    将之前生成的public_key.c中密钥部分替换application/bootloader/dfu_public_key.c中对应的内容
    ```shell
    /** @brief Public key used to verify DFU images */
    __ALIGN(4) const uint8_t pk[64] =
    {
        0xac, 0x29, 0x24, 0x03, 0xac, 0xdb, 0xab, 0x76, 0x64, 0x8b, 0xb3, 0xa2, 0x2c, 0xec, 0xbd, 0xa8, 0x8f, 0x36, 0x63, 0x1b, 0xa1, 0xe4, 0xf6, 0xe6, 0x33, 0xbq, 0xbe, 0xe3, 0x05, 0x8a, 0x14, 0x93, 
        0x99, 0xf4, 0x66, 0x9c, 0x80, 0x8f, 0xda, 0x06, 0xae, 0xbc, 0xcf, 0x6b, 0x6a, 0x68, 0x1c, 0x91, 0x2d, 0x23, 0xf1, 0x9d, 0xb0, 0xec, 0x5c, 0x8d, 0xc6, 0x88, 0x97, 0x88, 0x66, 0x54, 0x5f, 0x14
    };
    ```
    ` 注意：必须确保bootloader编译是的公钥与下面介绍的打包DFU.zip使用的私钥是成对的，否则会导致无法引导加载固件 `
    ```bash
    cd application/bootloader/project/armgcc
    make
    ```
  - 使用密钥制作只用于application更新的DFU.zip
    - 首先编译键盘固件
      ```bash
      cd keyboard/Ω45 && make
      ```
    - 打包
      将private.key复制到keyboar/Ω45/_build
      update application
      ```bash
      nrfutil pkg generate --hw-version 52 --application-version 1 --application nrf52_kbd.hex --sd-req 0xB8 --key-file private.key app_dfu_package.zip
      ```
  - 完整包DFU制作
      - 编译键盘固件，参考application DFU制作
      - 生成bootloader setting
        ``` bash
        nrfutil settings generate --family NRF52 --application nrf52832_xxaa_bootloader.hex --application-version 1 --bootloader-version 0 --bl-settings-version 1 bootloader_setting.hex
        ```
      - 合并bootloader & bootloader setting
        ```bash
        mergehex --merge nrf52832_xxaa_bootloader.hex bootloader_setting.hex --output nrf_bootloader_wsetting.hex
        ```
      - 打包
        `额外需要用到mergehex，在此处下载https://www.nordicsemi.com/Software-and-tools/Development-Tools/nRF-Command-Line-Tools/Download#infotabs`
        update bootloader & softdevice & application
        ```bash
        cp ../../../application/bootloader/project/armgcc/_build/nrf52832_xxaa_bootloader.hex ./
        nrfutil pkg generate --hw-version 52 --bootloader-version 0 --bootloader nrf_bootloader_wsetting.hex --application-version 1 --application nrf52_kbd.hex  --sd-req 0xB8,0xB7 --sd-id 0xB8,0xB7 --softdevice s112_nrf52_6.1.1_softdevice.hex --softdevice s132_nrf52_6.1.1_softdevice.hex --key-file private.key app_nrdfu_package_softdevice.zip
        ```
        `--application-version 必须不低于bootloader中的版本号，否则无法更新DFU`

### 蓝牙程序和USB控制器的编译
现在蓝牙和USB控制器程序的Makefile都放在一起了。进入对应的硬件目录，直接make即可。

```
cd keyboard/lot60-ble
make
```

### 硬件的烧录

对于nrf52，若要通过JLink直接写入，则需要安装JLink的驱动；若使用DAP-Link写入，则需要安装[pyocd](https://github.com/mbedmicro/pyOCD)；若使用蓝牙DFU进行升级，则需要安装[nrfutil](https://github.com/NordicSemiconductor/pc-nrfutil/)

对于ch554，你可以使用官方的[windows烧写工具](http://www.wch.cn/downloads/WCHISPTool_Setup_exe.html)，或三方的[usbisp](https://github.com/rgwan/librech551)烧写。

请使用`make help`查看所有的烧写和打包指令。

## 硬件移植
请参考Keyboard目录下的template移植模板，并查看doc目录下的对应说明。