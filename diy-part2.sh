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
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate
# 获取luci-app-openclash 编译po2lmo
git clone -b master https://github.com/vernesong/OpenClash package/diy-packages/openclash
pushd package/diy-packages/openclash/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
