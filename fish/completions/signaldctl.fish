set cmd signaldctl 
set -l actions account  completion config db-move device group help key message protocol raw session version

# Disable files
complete -f $cmd

# First
complete -c $cmd -n "__fish_use_subcommand" -xa "$actions"

# Second

complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " delete an account from the local signald instance, and optionally from the server as well"
complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " create a local account by linking to an existing Signal account"
complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " return a list of accounts"
complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " begin the process of creating a new account"
complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " return a list of accounts"
complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " updates the profile data with a new name"
complete -k -c signaldctl -n test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from account -xa  -d " verify an account and complete the registration process"
complete -c $cmd -n "__fish_seen_subcommand_from help" -xa "$actions"

# Options
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -l config 
complete -c $cmd -s o -l output-format
complete -c $cmd -s i -l socket
