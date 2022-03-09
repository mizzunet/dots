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

## time

## path
export PATH=/usr/local/bin:/home/missu/.local/bin:$PATH

## theme
export QT_QPA_PLATFORMTHEME=gnome
export NO_AT_BRIDGE=1
export GDK_CORE_DEVICE_EVENTS=1
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
