set cmd waydroid

# Disable files
complete -f $cmd

# First
complete -c $cmd -n "__fish_use_subcommand" -xa status -d "quick check for the waydroid"
complete -c $cmd -n "__fish_use_subcommand" -xa log -d "follow the waydroid logfile"
complete -c $cmd -n "__fish_use_subcommand" -xa init -d "set up waydroid specific configs and install"
complete -c $cmd -n "__fish_use_subcommand" -xa upgrade -d "upgrade images"
complete -c $cmd -n "__fish_use_subcommand" -xa session -d "session controller"
complete -c $cmd -n "__fish_use_subcommand" -xa container -d " container controller"
complete -c $cmd -n "__fish_use_subcommand" -xa app -d " applications controller"
complete -c $cmd -n "__fish_use_subcommand" -xa prop -d "android properties controller"
complete -c $cmd -n "__fish_use_subcommand" -xa show-full-ui -d "show android full screen in window"
complete -c $cmd -n "__fish_use_subcommand" -xa shell -d "run remote shell command" 
complete -c $cmd -n "__fish_use_subcommand" -xa logcat -d "show android logcat"

# second
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from session" -xa "start stop"
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from container" -xa "start stop"

# Options
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -s v -l version -d "Print version information"
