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

### Listing changed backup files

pacman -Qii | awk '/^MODIFIED/ {print $2}'

### Unowned files

lostfiles
pacreport --unowned-files

### pacman logs

pacolog

### Delete orphans

pacman -Qtdq | pacman -Rns -

### Unneeded services

rc-update del agetty.tty1
rm /etc/init.d/agetty./[tty4,tty5,tty6,tty}]

### Free space 

```
bleachbit
rm -rf /usr/share/doc
rm -rf /usr/share/gtk-doc
rm -rf /usr/share/themes/*-Light*
rm -rf /usr/share/themes/*-XFWM*
rm -rf /usr/share/themes/*-GNOME_*
rm -rf /usr/lib/firmware/amdgpu
find / -type f -name '*.py[co]' -delete -o -type d -name __pycac
he__ -delete
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
