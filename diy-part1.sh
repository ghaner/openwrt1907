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

# 查看所有标签
#git tag
# 切换到标签 v24.10.1
#git checkout v24.10.1

# 回退源码
#git reset --hard f372b71 #等同于切换到标签 v22.03.6

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

# 注释默认 packages
#sed -i 's/^\(.*packages\)/#&/' feeds.conf.default
# 添加 lienol 大 packages
#sed -i '$a src-git packages https://github.com/Lienol/openwrt-packages.git;24.10' feeds.conf.default
#sed -i '$a src-git packages https://github.com/Lienol/openwrt-packages.git^fb21629' feeds.conf.default

# 注释默认 luci
#sed -i 's/^\(.*luci\)/#&/' feeds.conf.default
# 添加 lienol 大 luci
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git;24.10' feeds.conf.default
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci.git^db0ddd1' feeds.conf.default

# 添加 lienol 大的 package
echo 'src-git OpenWrtPackage https://github.com/ghaner/OpenWrtPackage' >>feeds.conf.default
echo 'src-git openwrt-packages https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

# 添加 luci-app-msd_lite
#echo 'src-git msd_lite https://github.com/bigtan/luci-app-msd_lite.git' >>feeds.conf.default
#echo 'src-git msd_lite https://github.com/iii80/luci-app-msd.git' >>feeds.conf.default
