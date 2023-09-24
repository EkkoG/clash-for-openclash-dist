include $(TOPDIR)/rules.mk

PKG_NAME:=clash-meta-for-openclash
PKG_VERSION:=1.16.0
PKG_RELEASE:=1

PKG_SOURCE:=Clash.Meta-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/MetaCubeX/Clash.Meta/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=9d1edc314b62e1e2c911433d9b00ce578b73497f679adc587176a188ec6092cd

PKG_MAINTAINER:=EkkoG <beijiu572@gmail.om>
PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/Clash.Meta-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/Dreamacro/clash
GO_PKG_BUILD_PKG:=$(GO_PKG)
GO_PKG_LDFLAGS_X:= \
	$(GO_PKG)/constant.Version=$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/../feeds/packages/lang/golang/golang-package.mk

define Package/$(PKG_NAME)/template
	SECTION:=net
	CATEGORY:=Network
endef

define Package/$(PKG_NAME)
	$(call Package/$(PKG_NAME)/template)
	TITLE:=A rule-based tunnel in Go
	URL:=https://github.com/MetaCubeX/Clash.Meta
	DEPENDS:=$(GO_ARCH_DEPENDS)
endef

define Package/$(PKG_NAME)/description
	Clash, A rule based tunnel in Go, support VMess, Shadowsocks,
	Trojan, Snell protocol for remote connections.
endef

define Package/$(PKG_NAME)/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/etc/openclash/core/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/clash $(1)/etc/openclash/core/clash_meta
endef


$(eval $(call BuildPackage,$(PKG_NAME)))