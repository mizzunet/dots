export HYDROXIDE_BRIDGE_PASS=au7AwSwvYdfqJBDyjzySFo7xiIzvX7Ot3uXeGbXGwGA=

## Editor
export EDITOR="hx"
export VISUAL="hx"

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
fish_add_path /home/missu/.local/bin /home/missu/.local/go/bin

## Theme
export QT_QPA_PLATFORMTHEME=qt5ct
export DISABLE_QT5_COMPAT=1
export CALIBRE_USE_DARK_PALETTE=1
#export QT_STYLE_OVERRIDE=kvantum
export NO_AT_BRIDGE=1
export GDK_CORE_DEVICE_EVENTS=1
#export FREETYPE_PROPERTIES="truetype:interpreter-version=40"

# Wayland
export QT_QPA_PLATFORM=wayland-egl
export XDG_CURRENT_DESKTOP=sway # xdg-desktop-portal
# export  GTK_USE_PORTAL=1

# Firefox
export MOZ_ENABLE_WAYLAND=1
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_WEBRENDER=1
export BROWSER=firefox

# Go
export GOMODCACHE=/home/missu/.local/go
export GOPATH=/home/missu/.local/go

## Wine
export WINEDLLOVERRIDES="mscoree=d;mshtml=d"
export WINE_VK_VULKAN_ONLY=1
export WINE_VK_USE_FSR=1
export WINEFSYNC=1
