set -l actions play pause play-pause stop next previous volume status metadata open loop shuffle
set cmd playerctl

# Disable files
complete -f $cmd

# First
complete -c $cmd -n "__fish_use_subcommand" -xa play -d "play"
complete -c $cmd -n "__fish_use_subcommand" -xa pause -d "pause"
complete -c $cmd -n "__fish_use_subcommand" -xa play-pause -d "toggle play/pasue"
complete -c $cmd -n "__fish_use_subcommand" -xa stop -d "stop"
complete -c $cmd -n "__fish_use_subcommand" -xa next -d "next track"
complete -c $cmd -n "__fish_use_subcommand" -xa  previous -d "previous track"
complete -c $cmd -n "__fish_use_subcommand" -xa  position -d "go to the position or seek"
complete -c $cmd -n "__fish_use_subcommand" -xa  volume -d "Print or set the volume"
complete -c $cmd -n "__fish_use_subcommand" -xa status  -d "Get the play status"
complete -c $cmd -n "__fish_use_subcommand" -xa metadata -d "Print metadata information"
complete -c $cmd -n "__fish_use_subcommand" -xa open -d "Command for the player to open given URI"
complete -c $cmd -n "__fish_use_subcommand" -xa loop -d "Print or set the loop status"
complete -c $cmd -n "__fish_use_subcommand" -xa shuffle -d "Print or set the shuffle status"

# Options
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -s p -l player= -d "A comma separated list of names of players to control"
complete -c $cmd -s a -l all-players -d "Select all available players to be controlled"
complete -c $cmd -s i -l ignore-player= -d "A comma separated list of names of players to ignore."
complete -c $cmd -s f -l format -d "A format string for printing properties and metadata"
complete -c $cmd -s F -l follow -d "Block and append the query to output when it changes for the most recently updated player."
complete -c $cmd -s l -l list-all -d "List the names of running players that can be controlled"
complete -c $cmd -s s -l no-messages -d "Suppress diagnostic messages"
complete -c $cmd -s v -l version -d "Print version information"
