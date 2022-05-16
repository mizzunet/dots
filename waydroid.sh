echo DO NOT RUN THIS SCRIPT BLINDLY INSTEAD COPY/PASTE EACH COMMANDS

#########
# SETUP #
#########

# INSTALL WAYDROID
yay -S waydroid

# INSTALL REQUIRED KERNEL
yay -S linux-zen
# or
yay -S linux-xanmod

# DOWNLOAD IMAGES
set BROWSER="chromium"
$BROWSER "" # SYSTEM
$BROWSER "" # VENDOR

# UNZIP & MOVE TO IMAGES DIRECOTRY
set IMAGE_DIR="/usr/share/waydroid-extra/images/"
unzip *.zip
mkdir -p $IMAGE_DIR 
mv *.img $IMAGE_DIR

# INITILIASE IMAGES
waydroid init 

# ENABLE SERVICE
doas systemctl --now enable waydroid-container.service

# START WAYDROID
waydroid session start


###############################################
# SOME STUFF I'D DO AFTER INSTALLING WAYDROID #
###############################################

# SET WAYDROID WINDOW SIZE
waydroid prop set waydroid.display_width 300
waydroid prop set persist.waydroid.height_padding 57

# DISABLE SOFT NAVIGATION BAR
doas bash -c 'echo qemu.hw.mainkeys=1 >> /var/lib/waydroid/waydroid_base.prop'

# DISABLE BOOTANIMATION
doas bash -c 'echo debug.sf.nobootanimation=1 >> /var/lib/waydroid/waydroid_base.prop'

# CONNECT ADB
adb connect 192.168.250.112:5555

set UNINSTALL="adb shell pm uninstall --user 0"
# DISABLE BLOATS
## USE GUI https://github.com/0x192/universal-android-debloater
$UNINSTALL com.android.backupconfirm
$UNINSTALL com.android.bips
$UNINSTALL com.android.bookmarkprovider
$UNINSTALL com.android.calculator2
$UNINSTALL com.android.camera2
$UNINSTALL com.android.captiveportallogin
$UNINSTALL com.android.companiondevicemanager
$UNINSTALL com.android.contacts
$UNINSTALL com.android.cts.priv.ctsshim
$UNINSTALL com.android.deskclock
$UNINSTALL com.android.documentsui
$UNINSTALL com.android.dreams.basic
$UNINSTALL com.android.dreams.phototable
$UNINSTALL com.android.egg
$UNINSTALL com.android.email
$UNINSTALL android.ext.services
$UNINSTALL com.android.exchange
$UNINSTALL com.android.gallery3d
$UNINSTALL com.android.hotspot2
$UNINSTALL com.android.htmlviewer
$UNINSTALL com.android.inputdevices
$UNINSTALL com.android.inputmethod.latin
$UNINSTALL com.android.internal.display.cutout.emulation.corner
$UNINSTALL com.android.internal.display.cutout.emulation.double
$UNINSTALL com.android.internal.display.cutout.emulation.tall
$UNINSTALL com.android.internal.systemui.navbar.gestural
$UNINSTALL com.android.internal.systemui.navbar.gestural_extra_wide_back
$UNINSTALL com.android.internal.systemui.navbar.gestural_narrow_back
$UNINSTALL com.android.internal.systemui.navbar.gestural_wide_back
$UNINSTALL com.android.internal.systemui.navbar.threebutton
$UNINSTALL com.android.internal.systemui.navbar.twobutton
$UNINSTALL com.android.managedprovisioning
$UNINSTALL com.android.networkstack.permissionconfig
$UNINSTALL com.android.pacprocessor
$UNINSTALL com.android.printservice.recommendation
$UNINSTALL com.android.printspooler
$UNINSTALL com.android.providers.blockednumber
$UNINSTALL com.android.providers.calendar
$UNINSTALL com.android.providers.contacts
$UNINSTALL com.android.providers.media
$UNINSTALL com.android.providers.userdictionary
$UNINSTALL com.android.proxyhandler
$UNINSTALL com.android.se
$UNINSTALL com.android.sharedstoragebackup
$UNINSTALL com.android.simappdialog
$UNINSTALL com.android.smspush
$UNINSTALL com.android.theme.icon_pack.rounded.themepicker
$UNINSTALL com.android.traceur
$UNINSTALL com.android.vpndialogs
$UNINSTALL com.android.wallpaper.livepicker
$UNINSTALL com.android.wallpaperbackup
$UNINSTALL com.android.wallpapercropper
$UNINSTALL com.android.launcher3

$UNINSTALL com.stevesoltys.seedvault
$UNINSTALL org.lineageos.eleven
$UNINSTALL org.lineageos.etar
$UNINSTALL org.lineageos.overlay.accent.black
$UNINSTALL org.lineageos.overlay.accent.blue
$UNINSTALL org.lineageos.overlay.accent.brown
$UNINSTALL org.lineageos.overlay.accent.cyan
$UNINSTALL org.lineageos.overlay.accent.green
$UNINSTALL org.lineageos.overlay.accent.orange
$UNINSTALL org.lineageos.overlay.accent.pink
$UNINSTALL org.lineageos.overlay.accent.purple
$UNINSTALL org.lineageos.overlay.accent.red
$UNINSTALL org.lineageos.overlay.accent.yellow
$UNINSTALL org.lineageos.overlay.customization.navbar.nohint
$UNINSTALL org.lineageos.overlay.font.lato
$UNINSTALL org.lineageos.overlay.font.rubik
$UNINSTALL org.lineageos.recorder
$UNINSTALL org.lineageos.updater
$UNINSTALL org.lineageos.jelly

# SET RESOLUTION
adb shell wm density 160

set SET="adb shell settings put"
# ENABLE SOME SETTINGS
$SET put secure ui_night_mode 2 # DARK MODE
$SET put global airplane_mode_on 1 # FLIGHT MODE
$SET put global policy_control immersive.full=* # IMMERSIVE MODE

# DISBALE UNWANTED SETTINGS
$SET global animator_duration_scale 0.0 # ANIMATION
$SET secure location_mode 0 # LOCATIONS
$SET system dtmf_tone 0 # VIBRATION
$SET system lockscreen_sounds_enabled 0 # VIBRATION
$SET system sound_effects_enabled 0 # VIBRATION
$SET system haptic_feedback_enabled 0 # VIBRATION
$SET secure camera_double_tap_power_gesture_disabled 0
$SET secure volume_hush_gesture 0
$SET global user_switcher_enabled 0

# HIDE SOME DESKTOP ENTRIES
cd ~/.local/share/applications
echo NoDisplay=true | tee -a waydroid.fr.neamar.kiss.desktop waydroid.com.android.documentsui.desktop waydroid.com.android.settings.desktop waydroid.org.lineageos.jelly.desktop
echo NoDisplay=true | tee -a waydroid.com.android.camera2.desktop waydroid.com.android.contacts.desktop waydroid.com.android.calculator2.desktop waydroid.com.android.deskclock.desktop waydroid.com.android.inputmethod.latin.desktop waydroid.com.android.gallery3d.desktop waydroid.com.android.email.desktop

set BROWSER="chromium"
# INSTALL APPS
$BROWSER 'https://github.com/keymapperorg/KeyMapper/releases/'
$BROWSER 'https://github.com/ankidroid/Anki-Android/releases'
$BROWSER 'https://apkpure.com/english-dictionary-offline/livio.pack.lang.en_US'
$BROWSER 'https://signal.org/android/apk/'
$BROWSER 'https://m.apkpure.com/focusmeter-productivity-timer/co.zeitic.focusmeter'
$BROWSER 'https://f-droid.org/en/packages/at.bitfire.davdroid/'


###################
# TROUBLESHOOTING #
###################

#  WARNING: Service manager /dev/binder has died
Append "psi=1" to kernel parameter