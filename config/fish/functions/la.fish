function la --wraps='ls -a' --wraps='exa --icons --group-directories-first -l' --wraps='exa --icons --group-directories-first -al' --description 'alias la=exa --icons --group-directories-first -al'
  exa --icons --group-directories-first -al $argv; 
end
