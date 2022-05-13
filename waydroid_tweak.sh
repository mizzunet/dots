# DISABLE BLOATS
com.android.backupconfirm
com.android.bips
com.android.bookmarkprovider
com.android.calculator2
com.android.camera2
com.android.captiveportallogin
com.android.companiondevicemanager
com.android.contacts
com.android.cts.priv.ctsshim
com.android.deskclock
com.android.documentsui
com.android.dreams.basic
com.android.dreams.phototable
com.android.egg
com.android.email
com.android.exchange
com.android.gallery3d
com.android.hotspot2
com.android.htmlviewer
com.android.inputdevices
com.android.inputmethod.latin
com.android.internal.display.cutout.emulation.corner
com.android.internal.display.cutout.emulation.double
com.android.internal.display.cutout.emulation.tall
com.android.internal.systemui.navbar.gestural
com.android.internal.systemui.navbar.gestural_extra_wide_back
com.android.internal.systemui.navbar.gestural_narrow_back
com.android.internal.systemui.navbar.gestural_wide_back
com.android.internal.systemui.navbar.threebutton
com.android.internal.systemui.navbar.twobutton
com.android.managedprovisioning
com.android.networkstack.permissionconfig
com.android.pacprocessor
com.android.printservice.recommendation
com.android.printspooler
com.android.providers.blockednumber
com.android.providers.calendar
com.android.providers.contacts
com.android.providers.media
com.android.providers.userdictionary
com.android.proxyhandler
com.android.se
com.android.sharedstoragebackup
com.android.simappdialog
com.android.smspush
com.android.theme.icon_pack.rounded.themepicker
com.android.traceur
com.android.vpndialogs
com.android.wallpaper.livepicker
com.android.wallpaperbackup
com.android.wallpapercropper
org.lineageos.eleven
org.lineageos.etar
org.lineageos.overlay.accent.black
org.lineageos.overlay.accent.blue
org.lineageos.overlay.accent.brown
org.lineageos.overlay.accent.cyan
org.lineageos.overlay.accent.green
org.lineageos.overlay.accent.orange
org.lineageos.overlay.accent.pink
org.lineageos.overlay.accent.purple
org.lineageos.overlay.accent.red
org.lineageos.overlay.accent.yellow
org.lineageos.overlay.customization.blacktheme
org.lineageos.overlay.customization.navbar.nohint
org.lineageos.overlay.font.lato
org.lineageos.overlay.font.rubik
org.lineageos.recorder
org.lineageos.updater

# CONNECT ADB
adb connect 192.168.250.112:5555
# SET RESOLUTION
adb shell wm density 135
# ENABLE DARK MODE
adb shell settings put secure ui_night_mode 2
# DISABLE LOCATION
adb shell settings put secure location_mode 0
# DISABLE ANIMATION
adb shell settings put global animator_duration_scale 0.0
# SET WAYDROID WINDOW SIZE
waydroid prop set waydroid.display_width 300
waydroid prop set persist.waydroid.height_padding 57
# DISABLE SOFT NAVIGATION BAR
echo qemu.hw.mainkeys=1 >> /var/lib/waydroid/waydroid_base.prop
# DISABLE BOOTANIMATION
echo debug.sf.nobootanimation=1 >> /var/lib/waydroid/waydroid_base.prop
# HIDE SOME DESKTOP ENTRIES
echo NoDisplay=true | tee -a waydroid.fr.neamar.kiss.desktop waydroid.com.android.documentsui.desktop waydroid.com.android.settings.desktop waydroid.org.lineageos.jelly.desktop
echo NoDisplay=true | tee -a waydroid.com.android.camera2.desktop waydroid.com.android.contacts.desktop waydroid.com.android.calculator2.desktop waydroid.com.android.deskclock.desktop waydroid.com.android.inputmethod.latin.desktop waydroid.com.android.gallery3d.desktop waydroid.com.android.email.desktop
