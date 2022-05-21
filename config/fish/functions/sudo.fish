function sudo --wraps='echo not this one' --wraps='echo argh... use doas' --description 'alias sudo=echo argh... use doas'
  echo argh... use doas $argv; 
end
