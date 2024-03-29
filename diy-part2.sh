#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Only compile K3
sed -i 's|^TARGET_|#TARGET_|g; s|#TARGET_DEVICES += phicomm_k3|TARGET_DEVICES += phicomm_k3|' target/linux/bcm53xx/image/Makefile

# Modify kernel config
# sed -i '1i\CONFIG_ARM_CRYPTO=y' target/linux/bcm53xx/config-5.4
# sed -i '1i\CONFIG_ARM_CRYPTO=y' target/linux/bcm53xx/config-5.10
# sed -i '1i\CONFIG_ARM_CRYPTO=y' target/linux/bcm53xx/config-5.15
