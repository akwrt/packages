include $(TOPDIR)/rules.mk

PKG_NAME:=baik
PKG_FIXUP:=autoreconf
PKG_VERSION:=8.15
PKG_RELEASE:=1

PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)/
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=git://github.com/anak10thn/baik-mips.git
PKG_SOURCE_VERSION:=v8.15
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_PARALLEL:=1
PKG_LICENSE:=HarisCom

include $(INCLUDE_DIR)/package.mk


define Package/baik
	SECTION:=lang
	CATEGORY:=Languages
	DEPENDS:=+libpthread +libm +libgd +sqlite3 +libc
	TITLE:=Baik Programming Language
	URL:=http://sourceforge.net/projects/baik/
	MAINTAINER:=Eka Tresna Irawan <anak10thn@gmail.com>
endef

define Package/baik/description
	BAIK is a scripting language which syntax is in Indonesian 
	for Linux and Windows. It supports Animation, PDF, UTF8, 
	Printer, OOP, GUI, CGI, Databases, Graphics and TCP/IP.
endef

define Package/baik/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/baik $(1)/usr/bin/
endef

$(eval $(call BuildPackage,baik))
