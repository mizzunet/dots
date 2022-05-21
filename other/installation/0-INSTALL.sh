set -e

SUBVOL=@root
SSD=/dev/sdb2
BOOT=/dev/sdb1

# echo Subvolue name: "$SUBVOL"
iwctl
echo CONNECTED WIFI

timedatectl set-ntp true
echo SET TIMEZONE

# mount $SSD -o subvolid=5 /mnt
# echo Mounted $SSD AT /mnt

# btrfs subvolume create /mnt/""$SUBVOL"
# echo CREATED SUBVOLUME '$SUBVOL'
# umount /mnt
# echo Unmounted

mount /dev/sdb2 -o  rw,noatime,compress=zstd:3,ssd,space_cache=v2,commit=120,subvol=/"$SUBVOL" /mnt
echo MOUNTED SUBVOLUME '$SUBVOL' AT /mnt
mkdir -p /mnt/{boot,home,opt,tmp,var/tmp,var/log,var/cache}
echo CREATED DIRECTORIES
mount $BOOT /mnt/boot
echo MOUNTED $BOOT

mount /dev/sdb2 -o rw,noatime,ssd,space_cache=v2,compress=zstd:3,commit=120,subvol=/@var_cache /var/cache
echo MOUNTED pacman cache 

sed -i /etc/pacman.conf 's/#ParallelDownloads = 5/ParallelDownloads = 25'

pacstrap /mnt base base-devel fish

cp chroot.sh /mnt/

echo UNMOUNTED pacman cache

arch-chroot /mnt