set cmd bar-protonmail
# Disable files
complete -f $cmd

# First
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a auth -d 'Authentication.'

# Options
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -s f -d "" 
complete -c $cmd -s b -l badge
complete -c $cmd -s s -l sound
complete -c $cmd -s u -l urgency
complete -c $cmd -s t -l expire-time


