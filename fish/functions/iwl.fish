function iwl --wraps='iwctl station wlan0 get-networks' --description 'alias iwl=iwctl station wlan0 get-networks'
  iwctl station wlan0 get-networks $argv; 
end
