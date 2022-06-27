# starship prompt
# zoxide
zoxide init fish | source


# alt-c for wl-copy
bind \ec 'fish_commandline_append " | wl-copy"'
bind \eg 'fish_commandline_append " | grep "'

# Show taskwarrior tasks
if not test "$USER" = "root"
    task list
end
