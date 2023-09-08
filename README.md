https://github.com/EkkoG/clash-for-openclash-dist

## Usage

Add this line to your /etc/opkg/customfeeds.conf

Supported ARCH please see https://sourceforge.net/projects/ekko-openwrt-dist/files/clash/

```
echo "src/gz ekkog_clash https://master.dl.sourceforge.net/project/ekko-openwrt-dist/clash/$ARCH" | tee -a "/etc/opkg/customfeeds.conf"
```

Then install the signature key, please see

https://github.com/EkkoG/openwrt-dist#install-sign-key


Then run

```
opkg update
opkg install clash-meta-alpha-for-openclash
opkg install clash-meta-for-openclash
opkg install clash-for-openclash
```

or

```
opkg upgrade clash-meta-alpha-for-openclash
opkg upgrade clash-meta-for-openclash
opkg upgrade clash-for-openclash
```
