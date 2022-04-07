export HYDROXIDE_BRIDGE_PASS=TCbbVI04PmrRCmDGnHWGson/GEJIgcg0VpFSwiy0RRM=

## Editor
export EDITOR="kak"
export VISUAL="kak"

## Wine
#export WINEDLLOVERRIDES="mscoree,mshtml="
#export WINE_VK_VULKAN_ONLY=1
#export WINE_VK_USE_FSR=1
#export WINEFSYNC=1

## LibVA
export LIBVA_DRIVER_NAME=i965
export LIBVA_DRIVERS_PATH=/usr/lib/dri
export MESA_GLSL_CACHE_DISABLE=true
export MESA_LOADER_DRIVER_OVERRIDE=i965
export KOOHA_VAAPI=1
export GST_VAAPI_ALL_DRIVERS=1

## spotify_dl
export SPOTIPY_CLIENT_SECRET=5627a7efa52a4d5ab82c8bc64a62c42e
export SPOTIPY_CLIENT_ID=b1acb8ba1769473781009e4976250205

## PATH
export PATH=/usr/local/bin:/home/missu/.local/bin:$PATH

## Theme
export QT_QPA_PLATFORMTHEME=gnome
export NO_AT_BRIDGE=1
export GDK_CORE_DEVICE_EVENTS=1
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"

# Wayland
export QT_QPA_PLATFORM=wayland-egl
export XDG_CURRENT_DESKTOP=sway # xdg-desktop-portal

# Firefox
export MOZ_ENABLE_WAYLAND=1
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_WEBRENDER=1
export BROWSER=firefox

# Go
export GOMODCACHE=/home/missu/.local/go
export GOPATH=/home/missu/.local/go
