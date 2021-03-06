#
# Copyright (C) 20013-2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=dkjson
PKG_VERSION:=2.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ntavish/dkjson.git
PKG_SOURCE_VERSION:=ebac7a497ea718e10d3be67b1a37f2f2d00fc7ae
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_LICENSE:=MIT

include $(INCLUDE_DIR)/package.mk

define Package/dkjson
	SUBMENU:=Lua
	SECTION:=lang
	CATEGORY:=Languages
	TITLE:=DKJSON
	URL:=http://dkolf.de/src/dkjson-lua.fsl/home
	MAINTAINER:=Lars Gierth <larsg@systemli.org>
	DEPENDS:=+lua
endef

define Package/dkjson/description
	Lua JSON parser/serializer with UTF-8 support
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/dkjson/install
	$(INSTALL_DIR) $(1)/usr/lib/lua
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/dkjson.lua $(1)/usr/lib/lua/
endef

$(eval $(call BuildPackage,dkjson))
