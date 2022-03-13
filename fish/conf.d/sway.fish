# Autostart sway when user login on tty1

set -x XDG_CURRENT_DESKTOP 'sway' # xdg-desktop-portal
set -x MOZ_ENABLE_WAYLAND 1
set -x KITTY_ENABLE_WAYLAND 1
set -x QT_QPA_PLATFORM 'wayland-egl'
set -x BROWSER 'firefox'

set TTY1 (tty)

if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  # Debug
  #exec dbus-run-session sway -d 2> ~/sway.log
  exec dbus-run-session sway
end
