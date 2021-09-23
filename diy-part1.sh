#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

git clone https://github.com/kiddin9/openwrt-bypass.git /workdir/openwrt/package/openwrt-bypass
git clone https://github.com/kiddin9/openwrt-packages.git /workdir/openwrt/package/openwrt-packages

./scripts/feeds update -a &&./scripts/feeds install -a;
make -j32 download;
echo "依赖包下载完成"
