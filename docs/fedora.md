## Setup nameserver
mv /etc/resolv.conf /etc/resolv.conf.bak 
echo nameserver 1.1.1.1 > /etc/resolv.conf
## Install fish
dnf install fish
## Change shell
dnf install util-linux-user
