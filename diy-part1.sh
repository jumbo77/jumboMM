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
cp feeds.conf.default feeds.conf
echo "src-git mmdvm https://github.com/lazywalker/mmdvm-openwrt" >> feeds.conf
./scripts/feeds update -a
./scripts/feeds install -a -pmmdvm
wget -P package/feeds/luci/luci-base/luasrc/model/cbi https://github.com/mpaolino/openwrt/raw/master/proto_3g.lua
# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#git clone https://github.com/lazywalker/mmdvm-openwrt package/mmdvm-openwrt
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
