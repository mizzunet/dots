# Setup
## Kernel modules
1. Using linux-zen kernel
2. Installing required modules by dkms
    a. Install kernel's headers, eg: linux-lts-headers
    b. Install anbox-modules-dkms
    c. modprobe the modules,
      modprobe binder_linux devices=binder,hwbinder,vndbinder,anbox-binder,anbox-hwbinder,anbox-vndbinder
      modprobe ashmem_linux
    d. mount binder
      mkdir -p /dev/binderfs
      mount -t binder binder /dev/binderfs
      
## Using custom images
1. Download images from https://sourceforge.net/projects/waydroid
2. Move them to /usr/share/waydroid-extra/images/
3. Initialise, 
              waydroid init -f
              
  

## Disble boot animation for faster booting
echo "debug.sf.nobootanimation=1" >> 

## Downloading and installing necessarry applications
1. KeyMapper https://github.com/keymapperorg/KeyMapper/releases/download
2. AnkiDroid 
3. Signal
4. ETMoney https://www.apkmonk.com/download-app/com.smartspends
5. KISS https://f-droid.org/en/packages/fr.neamar.kiss
6. English
7. AntennaPod

## Disable AOSP bloatware apps

