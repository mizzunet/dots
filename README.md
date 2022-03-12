## My configuration files
Clone this 
```
git clone git@github.com:mizzunet/dots.git .dots
```
### Setup

<img src="/.screenshots/scr_mako.png" alt="Linux" />

* WM: `sway`

* Bar: `waybar`

* Notification: `mako`

* Terminal: `alacritty`

* Fonts: Materials Icons, Clear Sans

### Script
### Post installation 
#### Performance

* `prelockd` and `prelockd-openrc`
* `ananicy-cpp` and `ananicy-cpp`
#### Audio
```
pipewire pipewire-jack pipewire-pulse wireplumber gst-plugin-pipewire 
gst-plugins-good gst-plugins-bad 
bluez-libs

#### Power savings 
* `intel-undervolt` and `intel-undervolt-openrc`
* `auto-cpufreq`  and `auto-cpufreq-openrc`
* `tuned` and `tuned-openrc`
* `tlp` and `tlp-openrc`
* `powertop --auto-tune`
* `iw dev wlan0 set  power_save on` in `/etc/local.d/powersave.start`

#### HW acceleration
* Install `libva-intel-driver libva-utils`
* Environments
```
export LIBVA_DRIVER_NAME=i965
export LIBVA_DRIVERS_PATH=/usr/lib/dri
export MESA_GLSL_CACHE_DISABLE=true
export KOOHA_VAAPI=1
export GST_VAAPI_ALL_DRIVERS=1

#### Miscellaneous
* fstrim
** `/etc/cron.weekly/fstrim`
```
#!/bin/sh
# trim all mounted file systems which support it
/usr/bin/fstrim --all || true
```
* ZRAM
** `/etc/local.d/zram.start`
```
#!/bin/bash

modprobe zram
echo lz4 > /sys/block/zram0/comp_algorithm
echo 2G > /sys/block/zram0/disksize
mkswap --label zram0 /dev/zram0
swapon --priority 100 /dev/zram0
```
** `/etc/local.d/zram.stop`
```
#!/bin/bash

swapoff /dev/zram0

echo 1 > /sys/block/zram0/reset

modprobe -r zram
```


* Disble USB wakeup
** `/etc/local.d/disable-usb-wakeup.start`
```
#!/bin/bash
bash -c '\
    while read -r device _ status _; do \
        [[ $device == +([EX]HC*|USB*|PS2*|RP03) && $status == "*enabled" ]] && \
            echo $device > /proc/acpi/wakeup; \
    done < /proc/acpi/wakeup; \
    true \
    '
```
* Enable Wayland for Firefox
```
export MOZ_ENABLE_WAYLAND=1
```

#### Theme
* Enable thumbnails for File chooser: Install `gtk3-patched-filechooser-icon-view`
* Install `qgnomeplatform` for Adwaita for Qt
* Environments
```
export QT_QPA_PLATFORMTHEME=gnome
export NO_AT_BRIDGE=1
export GDK_CORE_DEVICE_EVENTS=1
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
```

#### Kernel parameters

* `quiet` for supressing logs
* `nowatchdog` to disable NMI watchdog
* `mitigations=off` for performance advantage
* `libahci.ignore_sss=1` to disable 
* `console=tty3` send logs to TTY3 rather than TTY1
* `acpi_osi=\"Windows 2015\" acpi_osi=!` get BIOS setting of Windows

* `intel-clear-ucode`
Add 
```
 initrd  /intel-ucode.cpio
 initrd  /i915-firmware.cpio.xz
```

* `booster` as initramfs instead of `mkinitcpio`
```
 initrd  /booster-linux-lts.img
```
#### modprobe options

* Blacklist unwanted modules
```
blacklist r8169  ## ethernet
blacklist bluetooth ## bluetooth
blacklist btusb ## bluetooth
blacklist joydev ## joystick
blacklist ath3k
blacklist ath9k_common
blacklist acer_wmi 
blacklist iTCO_wdt ## watchdog
blacklist iTCO_vendor_support ## watchdog
blacklist pcspkr
blacklist rtsx_pci ## Realtek
blacklist uvcvideo ## Web Cam
```

* `options snd_hda_intel power_save=1` enable power saving for audio

* `options ath9k ps_enable=1` powersaving for WiFi adapter

* `options i915 enable_dp_mst=0 error_capture=0 fastboot=1 enable_fbc=1`

### `sysctl.conf`
* Enable SysRq
`kernel.sysrq = 1`
* Laptop mode
`vm.laptop_mode = 5`
* Disable IPv6
```
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
```
* Network tweaks
```
net.core.netdev_max_backlog = 16384
net.core.somaxconn = 8192

net.core.rmem_default = 1048576
net.core.rmem_max = 16777216
net.core.wmem_default = 1048576
net.core.wmem_max = 16777216
net.core.optmem_max = 65536
net.ipv4.tcp_rmem = 4096 1048576 2097152
net.ipv4.tcp_wmem = 4096 65536 16777216

net.ipv4.udp_rmem_min = 8192
net.ipv4.udp_wmem_min = 8192

net.ipv4.tcp_fastopen = 3

net.ipv4.tcp_max_syn_backlog = 8192

net.ipv4.tcp_max_tw_buckets = 2000000

net.ipv4.tcp_tw_reuse = 1

net.ipv4.tcp_fin_timeout = 10

net.ipv4.tcp_slow_start_after_idle = 0

net.ipv4.tcp_keepalive_time = 60
net.ipv4.tcp_keepalive_intvl = 10
net.ipv4.tcp_keepalive_probes = 6

net.ipv4.tcp_mtu_probing = 1

net.ipv4.tcp_timestamps = 0

net.core.default_qdisc = cake
net.ipv4.tcp_congestion_control = bbr

net.ipv4.ip_local_port_range = 30000 65535

net.ipv4.tcp_syncookies = 1

net.ipv4.tcp_rfc1337 = 1

net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.all.rp_filter = 1


net.ipv4.conf.default.log_martians = 1
net.ipv4.conf.all.log_martians = 1


net.ipv4.conf.all.accept_redirects = 0
net.ipv4.conf.default.accept_redirects = 0
net.ipv4.conf.all.secure_redirects = 0
net.ipv4.conf.default.secure_redirects = 0
net.ipv6.conf.all.accept_redirects = 0
net.ipv6.conf.default.accept_redirects = 0


net.ipv4.conf.all.send_redirects = 0
net.ipv4.conf.default.send_redirects = 0


net.ipv4.icmp_echo_ignore_all = 1
net.ipv6.icmp.echo_ignore_all = 1

net.ipv4.ping_group_range = 100 100
net.ipv4.ping_group_range = 0 65535

```

* Virtual memory 
```
vm.dirty_ratio = 10
vm.dirty_background_ratio = 5
vm.vfs_cache_pressure = 50
vm.dirty_background_bytes = 4194304
vm.dirty_bytes = 4194304
vm.dirty_writeback_centisecs = 6000
```
#### `pacman.conf` 
* `NoExtract`
```
NoExtract =  usr/share/locale/*
NoExtract = !usr/share/locale/locale.alias
NoExtract = /usr/lib/firmware/amd*
NoExtract = /usr/share/doc/*
NoExtract = /usr/share/man/man3/*
NoExtract = /usr/lib/modules/*/kernel/drivers/net/ethernet/*
NoExtract = /usr/lib/modules/*/kernel/drivers/gpu/drm/amd/*
NoExtract = /usr/lib/modules/*/kernel/drivers/gpu/drm/nouveau/*
NoExtract = /usr/lib/modules/*/kernel/drivers/gpu/drm/radeon/*
NoExtract = /usr/lib/firmware/ath10k/*
NoExtract = /usr/lib/firmware/mediatek/*
NoExtract = /usr/lib/firmware/ath11k/*
NoExtract = /usr/lib/firmware/radeon/*
NoExtract = /usr/lib/firmware/nvidia/*
NoExtract = /usr/lib/firmware/iwlwifi*
NoExtract =  usr/share/i18n/*
NoExtract = !usr/share/i18n/charmaps/UTF-8.gz
NoExtract = !usr/share/i18n/locales/en_CA
NoExtract = !usr/share/i18n/locales/en_GB
NoExtract = !usr/share/i18n/locales/en_US
NoExtract = !usr/share/i18n/locales/i18n
NoExtract = !usr/share/i18n/locales/i18n_ctype
NoExtract = !usr/share/i18n/locales/iso14651_*
NoExtract = !usr/share/i18n/locales/translit_*
NoExtract = /usr/share/gtk-doc/*
NoExtract = usr/share/kbd/locale/*
NoExtract = usr/share/X11/locale/*
```

* Add arch repos
```
[extra]
Include = /etc/pacman.d/mirrorlist-arch

[community]
Include = /etc/pacman.d/mirrorlist-arch
```

#### `rc.conf`
* `rc_parallel="YES"` for parallel service loading which speeds up boot

### Other useful commands

* Listing changed backup files
```
pacman -Qii | awk '/^MODIFIED/ {print $2}'
```
* Unowned files
```
lostfiles
pacreport --unowned-files
```
* pacman logs
```
pacolog
```
* Delete orphans
```
pacman -Qtdq | pacman -Rns -
```
* Unneeded services
```
rc-update del agetty.tty1
rm /etc/init.d/agetty./[tty4,tty5,tty6,tty}]
```
* Space
```
bleachbit
rm -rf /usr/share/doc
rm -rf /usr/share/gtk-doc
rm -rf /usr/share/themes/*-Light*
rm -rf /usr/share/themes/*-XFWM*
rm -rf /usr/share/themes/*-GNOME_*
rm -rf /usr/lib/firmware/amdgpu
find / -type f -name '*.py[co]' -delete -o -type d -name __pycache__ -delete
```
