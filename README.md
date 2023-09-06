https://github.com/EkkoG/clash-for-openclash-dist

## Usage

Add this line to your /etc/opkg/customfeeds.conf

```
src/gz ekkog_dae https://master.dl.sourceforge.net/project/ekko-openwrt-dist/clash/$ARCH/
``````

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