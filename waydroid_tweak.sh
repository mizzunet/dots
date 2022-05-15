# CONNECT ADB
adb connect 192.168.250.112:5555

# DISABLE BLOATS
adb shall pm uninstall --user 0 com.android.backupconfirm
adb shall pm uninstall --user 0 com.android.bips
adb shall pm uninstall --user 0 com.android.bookmarkprovider
adb shall pm uninstall --user 0 com.android.calculator2
adb shall pm uninstall --user 0 com.android.camera2
adb shall pm uninstall --user 0 com.android.captiveportallogin
adb shall pm uninstall --user 0 com.android.companiondevicemanager
adb shall pm uninstall --user 0 com.android.contacts
adb shall pm uninstall --user 0 com.android.cts.priv.ctsshim
adb shall pm uninstall --user 0 com.android.deskclock
adb shall pm uninstall --user 0 com.android.documentsui
adb shall pm uninstall --user 0 com.android.dreams.basic
adb shall pm uninstall --user 0 com.android.dreams.phototable
adb shall pm uninstall --user 0 com.android.egg
adb shall pm uninstall --user 0 com.android.email
adb shall pm uninstall --user 0 com.android.exchange
adb shall pm uninstall --user 0 com.android.gallery3d
adb shall pm uninstall --user 0 com.android.hotspot2
adb shall pm uninstall --user 0 com.android.htmlviewer
adb shall pm uninstall --user 0 com.android.inputdevices
adb shall pm uninstall --user 0 com.android.inputmethod.latin
adb shall pm uninstall --user 0 com.android.internal.display.cutout.emulation.corner
adb shall pm uninstall --user 0 com.android.internal.display.cutout.emulation.double
adb shall pm uninstall --user 0 com.android.internal.display.cutout.emulation.tall
adb shall pm uninstall --user 0 com.android.internal.systemui.navbar.gestural
adb shall pm uninstall --user 0 com.android.internal.systemui.navbar.gestural_extra_wide_back
adb shall pm uninstall --user 0 com.android.internal.systemui.navbar.gestural_narrow_back
adb shall pm uninstall --user 0 com.android.internal.systemui.navbar.gestural_wide_back
adb shall pm uninstall --user 0 com.android.internal.systemui.navbar.threebutton
adb shall pm uninstall --user 0 com.android.internal.systemui.navbar.twobutton
adb shall pm uninstall --user 0 com.android.managedprovisioning
adb shall pm uninstall --user 0 com.android.networkstack.permissionconfig
adb shall pm uninstall --user 0 com.android.pacprocessor
adb shall pm uninstall --user 0 com.android.printservice.recommendation
adb shall pm uninstall --user 0 com.android.printspooler
adb shall pm uninstall --user 0 com.android.providers.blockednumber
adb shall pm uninstall --user 0 com.android.providers.calendar
adb shall pm uninstall --user 0 com.android.providers.contacts
adb shall pm uninstall --user 0 com.android.providers.media
adb shall pm uninstall --user 0 com.android.providers.userdictionary
adb shall pm uninstall --user 0 com.android.proxyhandler
adb shall pm uninstall --user 0 com.android.se
adb shall pm uninstall --user 0 com.android.sharedstoragebackup
adb shall pm uninstall --user 0 com.android.simappdialog
adb shall pm uninstall --user 0 com.android.smspush
adb shall pm uninstall --user 0 com.android.theme.icon_pack.rounded.themepicker
adb shall pm uninstall --user 0 com.android.traceur
adb shall pm uninstall --user 0 com.android.vpndialogs
adb shall pm uninstall --user 0 com.android.wallpaper.livepicker
adb shall pm uninstall --user 0 com.android.wallpaperbackup
adb shall pm uninstall --user 0 com.android.wallpapercropper
adb shall pm uninstall --user 0 org.lineageos.eleven
adb shall pm uninstall --user 0 org.lineageos.etar
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.black
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.blue
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.brown
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.cyan
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.green
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.orange
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.pink
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.purple
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.red
adb shall pm uninstall --user 0 org.lineageos.overlay.accent.yellow
adb shall pm uninstall --user 0 org.lineageos.overlay.customization.blacktheme
adb shall pm uninstall --user 0 org.lineageos.overlay.customization.navbar.nohint
adb shall pm uninstall --user 0 org.lineageos.overlay.font.lato
adb shall pm uninstall --user 0 org.lineageos.overlay.font.rubik
adb shall pm uninstall --user 0 org.lineageos.recorder
adb shall pm uninstall --user 0 org.lineageos.updater

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
doas bash -c 'echo qemu.hw.mainkeys=1 >> /var/lib/waydroid/waydroid_base.prop'

# DISABLE BOOTANIMATION
doas bash -c 'echo debug.sf.nobootanimation=1 >> /var/lib/waydroid/waydroid_base.prop'

# HIDE SOME DESKTOP ENTRIES
echo NoDisplay=true | tee -a waydroid.fr.neamar.kiss.desktop waydroid.com.android.documentsui.desktop waydroid.com.android.settings.desktop waydroid.org.lineageos.jelly.desktop
echo NoDisplay=true | tee -a waydroid.com.android.camera2.desktop waydroid.com.android.contacts.desktop waydroid.com.android.calculator2.desktop waydroid.com.android.deskclock.desktop waydroid.com.android.inputmethod.latin.desktop waydroid.com.android.gallery3d.desktop waydroid.com.android.email.desktop
