include $(TOPDIR)/rules.mk

PKG_NAME:=clash-meta-for-openclash
PKG_VERSION:=1.18.1
PKG_RELEASE:=1

PKG_SOURCE:=mihomo-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/MetaCubeX/mihomo/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=ddca7b6c9131ee067b906cc91360837a0e5bdee08a89851226aaed0adc71c086

PKG_MAINTAINER:=EkkoG <beijiu572@gmail.om>
PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/mihomo-$(PKG_VERSION)
PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/metacubex/mihomo
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
	URL:=https://github.com/MetaCubeX/mihomo
	DEPENDS:=$(GO_ARCH_DEPENDS)
endef

define Package/$(PKG_NAME)/description
	Clash, A rule based tunnel in Go, support VMess, Shadowsocks,
	Trojan, Snell protocol for remote connections.
endef

define Package/$(PKG_NAME)/install
	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
	$(INSTALL_DIR) $(1)/etc/openclash/core/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mihomo $(1)/etc/openclash/core/clash_meta
endef


$(eval $(call BuildPackage,$(PKG_NAME)))