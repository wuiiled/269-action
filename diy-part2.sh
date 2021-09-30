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
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=16384/g' package/qca/nss/qca-nss-ecm-64/Makefile
sed -i 's/dev.nss.ipv4cfg.ipv4_conn=.*/dev.nss.ipv4cfg.ipv4_conn=8192/g' package/qca/nss/qca-nss-drv-64/files/qca-nss-drv.sysctl
sed -i 's/dev.nss.ipv6cfg.ipv6_conn=.*/dev.nss.ipv6cfg.ipv6_conn=8192/g' package/qca/nss/qca-nss-drv-64/files/qca-nss-drv.sysctl
