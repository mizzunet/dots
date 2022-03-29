function watts
    while true; 
        set current (cat /sys/class/power_supply/BAT1/current_now); 
        set volatage (cat /sys/class/power_supply/BAT1/voltage_now); 
        set W (calc "$current * $volatage" / 1000000000000);
        echo "$W W";
        sleep 3; 
    end
end
