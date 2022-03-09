set -l actions "help store pick clear show-history restore"
set cmd clipman

# Disable files
complete -f $cmd

# First
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 1" \
    -xa "$actions"

# Second 
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from help" \
    -xa "$actions"
 complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from pick" \
    -xa "--tool=" -d "Pick tool you want to pick with"

# Options
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -l histpath -d  "Path of history file"
complete -c $cmd -l notify -d "Send desktop notifications on errors"
complete -c $cmd -l primary -d "Serve item to the primary clipboard"
complete -c $cmd -s v -l version -d "Show application version."

