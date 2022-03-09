starship init fish | source
set -U __done_min_cmd_duration 20000  # default: 5000 ms
bind \es 'fish_commandline_prepend doas'

