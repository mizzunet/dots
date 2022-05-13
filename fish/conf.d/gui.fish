switch $(tty)
    #case /dev/tty\*
  case /dev/tty1
    # exec dbus-run-session river 2> /tmp/river.log
    # exec dbus-run-session river 2> /tmp/river.log
    exec river
 case /dev/tty2
   exec dbus-run-session  startplasma-wayland
  # exec river
end
