set cmd hydroxide

# Disable files
complete -f $cmd

# First
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a auth -d '<username> Login to ProtonMail via hydroxide'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a carddav -d 'Run hydroxide as a CardDAV server'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a export-secret-keys -d '<username> Export secret keys'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a imap -d 'Run hydroxide as an IMAP server'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a import-messages -d '<username> [file] Import messages'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a export-messages -d '[options...] <username> Export messages'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a sendmail -d '<username> -- <args...> sendmail(1) interface'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a serve -d 'Run all servers'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a smtp -d 'Run hydroxide as an SMTP server'
complete -c $cmd -n 'test (__fish_number_of_cmd_args_wo_opts) = 1' -a status -d 'View hydroxide status'

# Options
complete -c $cmd -o h -s h -l help -d "Show help"
complete -c $cmd -o debug -d ""
complete -c $cmd -o disable-imap -d ""
complete -c $cmd -o disable-smtp -d ""
complete -c $cmd -o disable-carddav -d ""
complete -c $cmd -o imap-port -d ""
complete -c $cmd -o smtp-port -d ""
complete -c $cmd -o carddav-port -d ""
complete -c $cmd -o smtp-host -d ""
complete -c $cmd -o imap-host -d ""
complete -c $cmd -o carddav-host -d ""
