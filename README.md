https://github.com/EkkoG/clash-for-openclash-dist

## Add by script
```bash
sh -c "$(curl https://raw.fgit.cf/EkkoG/openwrt-dist/master/add-feed.sh)" -- clash
```

## Manual add

Supported ARCH please see https://sourceforge.net/projects/ekko-openwrt-dist/files/clash/ and replace $ARCH with the one you need.

Run command to add feed

```
echo "src/gz ekkog_clash https://downloads.sourceforge.net/project/ekko-openwrt-dist/clash/$ARCH" | tee -a "/etc/opkg/customfeeds.conf"
```

Or use Cloudflare CDN

```
echo "src/gz ekkog_clash https://ghproxy.imciel.com/https://downloads.sourceforge.net/project/ekko-openwrt-dist/clash/$ARCH" | tee -a "/etc/opkg/customfeeds.conf"
```

Then install the signature key, please see

https://github.com/EkkoG/openwrt-dist#install-sign-key


## Install or upgrade

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
