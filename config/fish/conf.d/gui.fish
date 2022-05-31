switch $(tty)
    #case /dev/tty\*
  case /dev/tty1
    exec river 2> /tmp/river.log
   # exec river 2> /tmp/river.log
    # dbus-run-session -- gnome-shell --display-server --wayland
 # case /dev/tty2
 #  exec dbus-run-session  startplasma-wayland
 #  exec river
end
