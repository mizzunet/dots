set cmd pw-cli

set pipewire_factories ( pw-cli list-objects | grep factory.name | awk '{print $3}'| string replace '"' '' --all)
set pipewire_modules (pw-cli list-objects  |  grep module.name | awk '{print $3}' | string replace '"' '' --all)
set pipewire_objects (pw-cli list-objects | grep name | awk '{print $3}' |  string replace '"' '' --all)
set pipewire_remotes (pw-cli list-remotes | awk '{print $4}' | string replace '"' '' --all)

set client_ids (pw-cli list-objects | grep client.id | awk '{print $3}'| string replace '"' '' --all)
set node_ids ( pw-cli list-objects | grep node.id | awk '{print $3}'|  string replace '"' '' --all)
set object_ids ( pw-cli list-objects | grep id | awk '{print $2}'|  string replace '=' '' --all| string replace ',' '' --all)

# Disable files
complete -f $cmd

# first
complete -c $cmd -n __fish_use_subcommand -xa help -d "Show this help"
complete -c $cmd -n __fish_use_subcommand -xa load-module -d "Load a module."
complete -c $cmd -n __fish_use_subcommand -xa unload-module -d "Unload a module."
complete -c $cmd -n __fish_use_subcommand -xa connect -d "Connect to a remote."
complete -c $cmd -n __fish_use_subcommand -xa disconnect -d "Disconnect from a remote. "
complete -c $cmd -n __fish_use_subcommand -xa list-remotes -d "List connected remotes."
complete -c $cmd -n __fish_use_subcommand -xa switch-remote -d "Switch between current remotes. "
complete -c $cmd -n __fish_use_subcommand -xa list-objects -d "List objects or current remote. "
complete -c $cmd -n __fish_use_subcommand -xa info -d "Get info about an object. "
complete -c $cmd -n __fish_use_subcommand -xa create-device -d "Create a device from a factory. "
complete -c $cmd -n __fish_use_subcommand -xa create-node -d "Create a node from a factory. "
complete -c $cmd -n __fish_use_subcommand -xa destroy -d "Destroy a global object. "
complete -c $cmd -n __fish_use_subcommand -xa create-link -d "Create a link between nodes. "
complete -c $cmd -n __fish_use_subcommand -xa export-node -d "Export a local node to the current remote. "
complete -c $cmd -n __fish_use_subcommand -xa enum-params -d "Enumerate params of an object "
complete -c $cmd -n __fish_use_subcommand -xa set-param -d "Set param of an object "
complete -c $cmd -n __fish_use_subcommand -xa permissions -d "Set permissions for a client "
complete -c $cmd -n __fish_use_subcommand -xa get-permissions -d "Get permissions of a client"
complete -c $cmd -n __fish_use_subcommand -xa send-command -d "Send a command "
complete -c $cmd -n __fish_use_subcommand -xa dump -d "Dump objects in ways that are cleaner for humans to understand"
complete -c $cmd -n __fish_use_subcommand -xa quit -d "Quit"

# second
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from connect" \
    -xa "$pipewire_remotes"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from create-device" \
    -xa "$pipewire_factories"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from create-link" \
    -xa "$node_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from destroy" \
    -xa "$object_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from enum-parms" \
    -xa "$object_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from export-node" \
    -xa "$node_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from get-permissions" \
    -xa "$client_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from info" \
    -xa "$object_ids all"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from list-objects" \
    -xa "Module Device Node Client"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from load-module" \
    -xa "$pipewire_modules"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from permissions" \
    -xa "$client_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from send-command" \
    -xa "$object_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from set-param" \
    -xa "$object_ids"
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from unload-module" \
    -xa "$pipewire_modules"

# third 
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 3; and __fish_seen_subcommand_from permissions" \
    -a "$pipewire_objects"


# Options
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -l histpath -d  "Path of history file"
complete -c $cmd -l notify -d "Send desktop notifications on errors"
complete -c $cmd -l primary -d "Serve item to the primary clipboard"
complete -c $cmd -s v -l version -d "Show application version."

