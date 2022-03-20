set -l commands "(busybox --list)"
set cmd busybox

# Disable files
complete -f $cmd

complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 1; and __fish_contains_opt" \
    -a $commands


# Options
complete -c $cmd -n "not __fish_seen_subcommand_from $commands" -xl help -xl install

complete -c $cmd -n "__fish_seen_subcommand_from --install"  -s s
