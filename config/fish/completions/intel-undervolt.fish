set -l actions "help store pick clear show-history restore"
set cmd intel-undervolt

# Disable files
complete -f $cmd

# First
complete -k -c $cmd -n "__fish_use_subcommand"  \
    -xa "read" -d "read and display current values"
complete -k -c $cmd -n "__fish_use_subcommand"  \
    -xa "apply" -d "apply values from config file"
complete -k -c $cmd -n "__fish_use_subcommand"  \
    -xa "measure" -d "measure power consumption"
complete -k -c $cmd -n "__fish_use_subcommand"  \
    -xa "daemon" -d "run in daemon mode"

# Options
complete -c $cmd -xs h -l help -d "Show help"
complete -c $cmd -xs f -l format -d  "output format"
complete -c $cmd -xs s -l sleep -d "sleep interval in seconds"

