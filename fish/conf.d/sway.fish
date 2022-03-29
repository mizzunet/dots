# Autostart sway when user login on tty1
set TTY1 (tty)

if test -z "$DISPLAY"; and test $TTY1 = "/dev/tty1"
  # Debug
  exec dbus-run-session sway -d 2> /tmp/sway.log
end
