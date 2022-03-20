function iwc --wraps='iwctl station wlan0 connect' --description 'alias iwc=iwctl station wlan0 connect'
bash -c 'R=$( sudo iw dev wlan0 scan | grep SSID | cut -c 8- \\
          | smenu -n20 -W $\':\\t\\n\' -q -c -b -g -s /VmH) && iwctl station wlan0 connect  $R'
echo "Connected to" $R
end
