## editor
export EDITOR="nvim"
export VISUAL="nvim"

## wine
#export WINEDLLOVERRIDES="mscoree,mshtml="
#export WINE_VK_VULKAN_ONLY=1
#export WINE_VK_USE_FSR=1
#export WINEFSYNC=1

## libva
export LIBVA_DRIVER_NAME=i965
export LIBVA_DRIVERS_PATH=/usr/lib/dri
export MESA_GLSL_CACHE_DISABLE=true
export KOOHA_VAAPI=1
export GST_VAAPI_ALL_DRIVERS=1

## spotify_dl
export SPOTIPY_CLIENT_SECRET=5627a7efa52a4d5ab82c8bc64a62c42e
export SPOTIPY_CLIENT_ID=b1acb8ba1769473781009e4976250205

## path
export PATH=/usr/local/bin:/home/missu/.local/bin:$PATH

## theme
export QT_QPA_PLATFORMTHEME=gnome
export NO_AT_BRIDGE=1
export GDK_CORE_DEVICE_EVENTS=1
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"

## wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_DISABLE_RDD_SANDBOX=1
export MOZ_LOG="PlatformDecoderModule:5"
export QT_QPA_PLATFORM=wayland-egl
export XDG_CURRENT_DESKTOP=sway # xdg-desktop-portal
export BROWSER=firefox

#export LC_ALL="en_GB.UTF-8"

export HYDROXIDE_BRIDGE_PASS=iIh714gawmWOWnWVDst9Y3dA/u9MUMkuxu/OBMNQmcE=
