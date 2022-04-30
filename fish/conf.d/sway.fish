switch $(tty)
    #case /dev/tty\*
  case /dev/tty1
    exec dbus-run-session river 2> /tmp/river.log
    # exec dbus-run-session river 2> /tmp/river.log
    # exec sway
 case /dev/tty2
  # exec dbus-run-session -- gnome-shell --display-server --wayland
  # exec river
end
