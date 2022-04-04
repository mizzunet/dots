set -l actions addDevice block daemon getUserStatus joinGroup jsonRpc link listAccounts listContacts listDevices listGroups listIdentities listStickerPacks quitGroup receive register remoteDelete removeContact removeDevice removePin send sendContacts sendReaction sendReceipt sendSyncRequest sendTyping setPin submitRateLimitChallenge trust unblock unregister updateAccount updateConfiguration updateContact updateGroup updateProfile uploadStickerPack verify
set cmd signal-cli 

# Disable files
complete -f $cmd

# First
complete -c $cmd -n "__fish_use_subcommand" -xa "$actions"

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
