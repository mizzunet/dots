#!/bin/bash
set -e

mount /dev/sdb2 -o rw,noatime,ssd,space_cache=v2,compress=zstd:3,commit=120,subvol=/@home /home
mount /dev/sdb2 -o rw,noatime,ssd,space_cache=v2,compress=zstd:3,commit=120,subvol=/@var_tmp /var/tmp
mount /dev/sdb2 -o rw,noatime,ssd,space_cache=v2,compress=zstd:3,commit=120,subvol=/@var_log /var/log

timedatectl set-timezone Asia/Kolkata
hwclock --systohc
echo en_GB.UTF-8 UTF-8  >> /etc/locale.gen
echo LANG=en_GB.UTF-8 >> /etc/locale.conf
locale-gen

echo archie >> /etc/hostname
sed -i /etc/pacman.conf 's/#ParallelDownloads = 5/ParallelDownloads = 25'

pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
pacman-key --lsign-key FBA220DFC880C036
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
cat <<EOF >> /etc/pacman.conf 
[chaotic-aur]
Include = /etc/pacman.d/chaotic-mirrorlist 
EOF
echo SET UP CHAOTIC-AUR
pacman -Syu
pacman -S yay

yay -S linux-lts booster fish helix iwd opendoas opendoas-sudo zoxide starship btrfs-progs 
yay -S gnome-themes-extra otf-manjari ttf-jetbrains-mono ttf-nerd-fonts-symbols ttf-twemoji ttf-roboto-mono pdnsd
#yay -S sway waybar xorg-xwayland wl-clipboard 
yay -S yambar river xorg-xwayland wl-clipboard foot

systemctl enable iwd


passwd
chsh -s /usr/bin/fish

useradd missu
usermod -aG wheel,audio,video,storage,rfkill,network --shell /usr/bin/fish  missu
passwd missu

cat <<EOF > /etc/resolv.conf
nameserver 1.1.1.1
EOF

mkdir /etc/iwd
cat <<EOF > /etc/iwd/main.conf 
[General]
EnableNetworkConfiguration=true
[Network]
EnableIPv6=false
EOF

cat <<EOF > /etc/doas.conf
permit nopass keepenv root
permit nopass keepenv :wheel
permit nopass :missu as root cmd /usr/bin/psd-overlay-helper
permit nopass :missu as root cmd /usr/bin/psdns 
EOF

