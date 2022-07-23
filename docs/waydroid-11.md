## How to install Android 11 on Waydroid

### Clean Waydroid
```
 sudo rm -rf /var/lib/waydroid/ ~/.local/share/{waydroid,applications/*aydroid*}
```

### Make pre-installed waydroid images folder
```
sudo mkdir -p /usr/share/waydroid-extra/images
```

### Download Android 11 images (choose one) on to Downloads folder
```
cd ~/Downloads
```
- https://mega.nz/folder/N10jGA4a#j8tF2-6LY6Qq5Da2zV0Z7g
```
  sudo 7z e -o/usr/share/waydroid-extra/images system.img.7z
  sudo 7z e -o/usr/share/waydroid-extra/images vendor.img.7z
```
  or

- https://sourceforge.net/projects/blissos-dev/files/waydroid/lineage/lineage-18.1/
```
  sudo unzip -d /usr/share/waydroid-extra/images '*waydroid*.zip'
```

### Initialize use pre-installed waydroid images
```
sudo waydroid init -f -i /usr/share/waydroid-extra/images
```

### Enable kernel unprivileged bpf
```
sudo sysctl -w kernel.unprivileged_bpf_disabled=0
```

### Checking your kernel, is it has ashmem or memfd (usually kernel >= 5.18 no longger has ashmem)
```
 zgrep -E 'ASHMEM|MEMFD' /proc/config.gz
```
Skip "Enable memfd" step below if your kernel still have ashmem


### Enable memfd
```
# waydroid_base.prop
echo "sys.use_memfd=true" | sudo tee -a /var/lib/waydroid/waydroid_base.prop

# init.rc
mkdir /tmp/rootfs
sudo mount -o rw /usr/share/waydroid-extra/images/system.img /tmp/rootfs
sudo sed -i '/setprop sys.use_memfd/s/false/true/' /tmp/rootfs/system/etc/init/hw/init.rc
sudo umount /tmp/rootfs && rmdir /tmp/rootfs 
```


### Modify gbinder config
- Debian or Ubuntu
```
  sudo sed -i '/ApiLevel/s/29/30/' /etc/gbinder.d/anbox.conf
  sudo sed -i 's/aidl2/aidl3/' /etc/gbinder.d/waydroid.conf
```

- Arch Linux
```
  sudo sed -i '/ApiLevel/s/29/30/' /etc/gbinder.conf
  sudo sed -i 's/aidl2/aidl3/' /etc/gbinder.d/anbox.conf
```

- Fedora
```
  sudo sed -i '/ApiLevel/s/29/30/' /etc/gbinder.d/waydroid.conf
  sudo sed -i 's/aidl2/aidl3/' /etc/gbinder.d/waydroid.conf
```

### Run waydroid container
```
sudo systemctl stop waydroid-container.service
sudo killall waydroid
sudo systemctl start waydroid-container.service || sudo waydroid start container
```

### Run waydroid session, Open new tab (Ctrl+Alt+T)
```
waydroid session start
```

Please wait until you see message "Android with user 0 is ready"

### Run waydroid ui after it ready, Open new tab again
```
waydroid show-full-ui
```


Good luck :)


thanks to Wachid Adi Nugroho from Waydroid matrix group for this documentaion.

### Support

GitHub: https://github.com/waydroid/waydroid

Matrix: `#waydroid:connolly.tech`

Website: http://waydro.id/

Docs: http://docs.waydro.id/

