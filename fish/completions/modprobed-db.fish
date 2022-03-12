set cmd modprobed-db

# Disable files
complete -f $cmd

# First

complete -c $cmd -n "__fish_use_subcommand" -xa list -d "Show all modules currently in the database"
complete -c $cmd -n "__fish_use_subcommand" -xa store -d "Store any new module(s) to the database"
complete -c $cmd -n "__fish_use_subcommand" -xa storesilent	-d "Store any new module(s) to the database more quietly"
complete -c $cmd -n "__fish_use_subcommand" -xa debug -d "show what did not get loaded"
complete -c $cmd -n "__fish_use_subcommand" -xa recall	-d "Modprobe to load all modules in the database"

# Options

complete -c $cmd -s h -l help -d "Show help"
