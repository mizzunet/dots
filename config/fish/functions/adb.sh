#!/bin/bash
while true
do
if [ $(sudo iwconfig 2>/dev/null |grep ESSID |cut -d: -f2)  = '"Missu"' ]; then
        killall adb
        echo Killed
	adb connect $(sudo arp-scan  --interface=wlan0 --localnet | grep a2:ef:b2:59:b2:b2 |awk '{print $1;}'):5555
        echo Connected
	scrcpy
else
    nmcli device wifi rescan
    echo Scanning
    nmcli device wifi connect Missu

fi
done
