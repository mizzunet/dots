set cmd bw

set main_commands "login logout lock unlock sync generate encode config update completion status serve list get create edit delete restore move confirm import export share send receive"
set config_args "server"
set confirm_args "org-member"
set create_args "item attachment folder org-collection"
set delete_args "item attachment folder org-collection"
set edit_args "item item-collections folder org-collection"
set export_format_args "csv json encrypted_json"
set get_args "item username password uri totp notes exposed attachment folder collection org-collection organization template fingerprint send"
set list_args "items folders collections org-collections org-members organizations"
set restore_args "item"
set data_args "list template get receive create edit remove-password delete"

# Disable files
complete -f $cmd

#########
# First #
#########
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "login" -d "Log into a user account."
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -a "logout" -d "Log out of the current user account."
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "lock" -d "Lock the vault and destroy active session keys."
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "unlock" -d "Unlock the vault and return a new session key."
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "sync" -d "Pull the latest vault data from server"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "generate" -d "Generate a password/passphrase"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "encode" -d "Base 64 encode stdin"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "config" -d "Configure CLI settings"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "help" -d "Get help for the command"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "update" -d "Check for updates"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "completion" -d "Generate shell completions"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "status" -d "Show server, last sync, user information, and vault status"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "serve" -d "Start a RESTful API webserver"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "list" -d "List an array of objects from the vault"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "get" -d "Get an object from the vault."
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "create" -d "Create an object in the vault"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "edit" -d "Edit an object from the vault"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "delete" -d "Delete an object from the vault"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "restore" -d "Restores an object from the trash"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "move" -d "Move an item to an organization"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "confirm" -d "Confirm an object to the organization"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "import" -d "Import vault data from a file"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "export" -d "Export vault data to a CSV or JSON file"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "share" -d "--DEPRECATED-- Move an item to an organization"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "send" -d "Work with Bitwarden sends. A Send can be quickly created using this command or subcommands can be used to fine-tune the Send"
complete -c $cmd -n "not __fish_seen_subcommand_from $main_commands" -xa "receive" -d "Access a Bitwarden Send from a url"

##########
# Second #
##########
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from help" -a $main_commands
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from completion" -xl shell 
complete -c $cmd -n "__fish_seen_subcommand_from config" -xl web-vault -l api -l identity -l icons -l notifications -l events -l key-connector 
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from config" -xa $config_args
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from confirm" -xa $confirm_args
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from confirm" -xl organizationid 
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from create" -xa $create_args
complete -c $cmd -n "__fish_seen_subcommand_from create" -l file -l itemid -l organizationid
complete -c $cmd -n "__fish_seen_subcommand_from delete" -xa $delete_args
complete -c $cmd -n "__fish_seen_subcommand_from delete" -xl itemid -l organizationid -l permanent 
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from edit" -xa $edit_args
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from edit" -xl organizationid 
complete -c $cmd -n "__fish_seen_subcommand_from export" -xl output -l format -l password -l organizationid
complete -c $cmd -n "__fish_seen_subcommand_from generate" -xl uppercase -l lowercase -l number -l special -l passphrase -l length -l words -l separator -l capitalize -l includeNumber
complete -c $cmd -n "__fish_seen_subcommand_from get" -xa $get_args
complete -c $cmd -n "__fish_seen_subcommand_from get" -xl itemid -l output -l organizationid
complete -c $cmd -n "__fish_seen_subcommand_from import" -xl formats -l organizationid
complete -c $cmd -n "__fish_seen_subcommand_from list" -xl search -l url -l folderid -l collectionid -l organizationid -l trash
complete -c $cmd -n "__fish_seen_subcommand_from list" -xa $list_args
complete -c $cmd -n "__fish_seen_subcommand_from login" -xl method -l code -l sso -l apikey -l passwordenv -l passwordfile
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from move" -xl organizationid 
complete -c $cmd -n "__fish_seen_subcommand_from receive" -xl password -l passwordenv -l passwordfile -l obj -l output 
complete -c $cmd -n "__fish_seen_subcommand_from " -xl organizationid 

complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from restore" -xa $restore_args
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from data" -xa $data_args


##########
# Third #
#########
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from export; and __fish_seen_subcommand_from format" -xa $export_format_args

###########
# Options #
###########
complete -c $cmd -l pretty -d "Format output. JSON is tabbed with two spaces."
complete -c $cmd -l raw -d "Return raw output instead of a descriptive message"
complete -c $cmd -l response -d "Return a JSON formatted version of response output"
complete -c $cmd -l cleanexit -d "Exit with a success exit code (0) unless an error is thrown"
complete -c $cmd -l quiet -d "Don't return anything to stdout"
complete -c $cmd -l nointeraction -d "Do not prompt for interactive user input"
complete -c $cmd -l session -d "Pass session key instead of reading from env"
complete -c $cmd -s h -l help -d "version"
complete -c $cmd -s v -l version -d "help"



