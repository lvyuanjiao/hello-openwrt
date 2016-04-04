#
# Copyright (C) 2006-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=hello-openwrt
PKG_VERSION:=0.1
PKG_RELEASE:=1

#PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
#PKG_SOURCE_URL:=
#PKG_MD5SUM:=

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

#PKG_FIXUP:=autoreconf
#PKG_INSTALL:=1

PKG_MAINTAINER:=lvyuanjiao <lvyuanjiao@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/hello-openwrt
	SECTION:=utils
	CATEGORY:=Utilities
	TITLE:=Hello OpenWRT
	#URL:=
endef

define Package/hello-openwrt/description
	An application prints hello message.
endef

define Build/Prepare
	echo $(TARGET_CROSS)
	mkdir -p $(PKG_BUILD_DIR)
	$(CP) ./src/* $(PKG_BUILD_DIR)/
endef

define Package/hello-openwrt/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/hello-openwrt $(1)/bin/
endef

$(eval $(call BuildPackage,hello-openwrt))
