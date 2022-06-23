switch $(tty)
  case /dev/tty1
  if test -e /tmp/river.log;
    echo river crashed
    #exec river;
  else;
    exec river 2> /tmp/river.log;
    #echo river crashed
  end
end
