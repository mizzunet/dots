set -l actions play pause play-pause stop next previous volume status metadata open loop shuffle
set cmd croc

# Disable files
#complete -f $cmd

# First
complete -c $cmd -n "__fish_use_subcommand" -xa send -d "Send a file(s)"
complete -c $cmd -n "__fish_use_subcommand" -xa secret-code -d "Receive a file"
complete -c $cmd -n "__fish_use_subcommand" -xa relay -d "start your own relay"
complete -c $cmd -n "__fish_use_subcommand" -xa help -d " Shows a list of commands"

# Options
complete -c $cmd -n "__fish_seen_subcommand_from send; and  brightnessctl -n test (__fish_number_of_cmd_args_wo_opts) = 1" -l code -d "custom code"

# Global Options
complete -c $cmd -s h -l internal-dns -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l remember -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l debug -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l yes -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l stdout -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l no-compress -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l ask -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l local -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l ignore-stdin -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l overwrite -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l curve -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l relay -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l relay6 -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l out -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l pass -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l socks5  -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l throttleUpload -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l help -d "use a built-in DNS stub resolver"
complete -c $cmd -s h -l version -d "use a built-in DNS stub resolver"
