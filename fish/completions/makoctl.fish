##all actions
set -l actions "help dismiss restore invoke menu list reload set-mode"
set cmd makoctl

# Disable files
complete -f $cmd

# First
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 1" \
    -xa "$actions"

# Options
complete -c $cmd -s h -l help -d "Show help"

