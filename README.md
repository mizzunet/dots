## My configuration files
Clone this 
```
git clone git@github.com:mizzunet/dots.git .dots
```
### Setup

<img src="/.screenshots/scr_mako.png" alt="Linux" />

* WM: sway

* Bar: waybar

* Notification: mako

* Fonts: Materials Icons, Clear Sans

### Script
### Post installation 
### Tweaks
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
