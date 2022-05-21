set cmd wpctl
set -l actions status inspect set-default set-volume set-mute set-profile clear-default
set ID @DEFAULT_AUDIO_SINK@ 

# Disable files
complete -f $cmd

# First
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 1" \
    -xa "$actions"

# Second 
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from inspect" \
    -xa "$ID"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from set-default" \
    -xa "$ID"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from set-volume" \
    -xa "$ID"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from set-mute" \
    -xa "$ID"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from set-profile" \
    -xa "$ID"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from clear-default" \
    -xa "$ID"

# Third
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 3; and __fish_seen_subcommand_from set-mute" \
    -xa "1 0 toggle"

# Options
complete -c $cmd -s h -l help -d "Show help"
