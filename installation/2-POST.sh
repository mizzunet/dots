#root confi
ln -s /home/missu/.config/fish .config/
ln -s /home/missu/.config/helix .config/
# RUNLEVEL
systemctl set-default multi-user.target 
# resolve

# autologin
mkdir /etc/systemd/system/getty@tty1.service.d
cat EOF /etc/systemd/system/getty@tty1.service.d/autologin.conf << [Service]
[Service]
ExecStart=-/sbin/agetty -o '-p -f -- \\u' --noclear --skip-login --autologin missu - $TERM
EOF
systemctl enable getty@tty1.service 

# services
systemctl enable tuned.service 
systemctl enable prelockd.service 
systemctl enable nohang-desktop.service 
systemctl enable asd.service 
systemctl enable ananicy-cpp.service 
systemctl enable  intel-undervolt.service 
systemctl enable  thermald.service 
systemctl enable  fstrim.timer

# ipsec
# usb wakeup
#!/bin/bash
[Service]
ExecStart=/usr/local/bin/disable-usb-wakeup.sh

[Install]
WantedBy=default.target

bash -c '\
    while read -r device _ status _; do \
        [[ $device == +([EX]HC*|USB*|PS2*|RP03) && $status == "*enabled" ]] && \
            echo $device > /proc/acpi/wakeup; \
    done < /proc/acpi/wakeup; \
    true \
    '
systemctl enable disable-usb-wakeup.service 

# zram
systemctl enable --now zramd

# sysctl
#modprob
#udev bat

pacman -Qii | awk '/^MODIFIED/ {print $2}'

#pacman.conf
#pdsnd
#asd
#booster
#losfile

#hosts
wget 'http://sbc.io/hosts/alternates/fakenews-gambling-porn-social/hosts'

