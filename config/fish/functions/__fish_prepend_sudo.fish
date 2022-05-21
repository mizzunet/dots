function __fish_prepend_sudo --description \ DEPRECATED:\ use\ fish_commandline_prepend\ instead.\ Prepend\ \'sudo\ \'\ to\ the\ beginning\ of\ the\ current\ commandline
    fish_commandline_prepend doas
end
