# starship prompt
starship init fish | source
# zoxide
zoxide init fish | source


# alt-c for wl-copy
bind \ec 'fish_commandline_append " | wl-copy"'

# Show taskwarrior tasks
if not test "$USER" = "root"
    task list
end
