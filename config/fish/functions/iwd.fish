function iwd --wraps='iwctl station wlan0 disconnect' --description 'alias iwd=iwctl station wlan0 disconnect'
  iwctl station wlan0 disconnect $argv; 
end
