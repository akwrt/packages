#
# Copyright (C) 2006-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

define Package/python-bsddb
$(call Package/python/Default)
  TITLE:=Python $(PYTHON_VERSION) bsddb module
  DEPENDS:=+python-light +libdb47
endef

$(eval $(call PyBasePackage,python-bsddb, \
	/usr/lib/python$(PYTHON_VERSION)/bsddb \
	/usr/lib/python$(PYTHON_VERSION)/lib-dynload/_bsddb.so \
))
