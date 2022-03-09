function cpr --wraps='rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1' --description 'alias cpr=rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1'
  rsync --archive -hh --partial --info=stats1,progress2 --modify-window=1 $argv; 
end
