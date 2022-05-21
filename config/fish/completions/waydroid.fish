set cmd waydroid

set props persist.waydroid.multi_windows persist.waydroid.invert_colors persist.waydroid.height_padding persist.waydroid.width_padding waydroid.display_width  persist.waydroid.width persist.waydroid.suspend 
set installed_apps (waydroid app list | grep packageName | cut -d" " -f2)

# 1. MAIN COMMANDS
complete -c $cmd -n "__fish_use_subcommand" -xa status -d "quick check for the waydroid"
complete -c $cmd -n "__fish_use_subcommand" -xa log -d "follow the waydroid logfile"
complete -c $cmd -n "__fish_use_subcommand" -xa init -d "set up waydroid specific configs and install"
complete -c $cmd -n "__fish_use_subcommand" -xa upgrade -d "upgrade images"
complete -c $cmd -n "__fish_use_subcommand" -xa session -d "session controller"
complete -c $cmd -n "__fish_use_subcommand" -xa container -d " container controller"
complete -c $cmd -n "__fish_use_subcommand" -xa app -d " applications controller"
complete -c $cmd -n "__fish_use_subcommand" -xa prop -d "android properties controller"
complete -c $cmd -n "__fish_use_subcommand" -xa show-full-ui -d "show android full screen in window"
complete -c $cmd -n "__fish_use_subcommand" -xa shell -d "run remote shell command" 
complete -c $cmd -n "__fish_use_subcommand" -xa logcat -d "show android logcat"

# 2. app
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from app" \
    -xa "install" -d "install package" 
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from app" \
    -xa "launch" -d "launch package" 
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from app" \
    -xa "list" -d "list packages" 
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from app" \
    -xa "remove" -d "remove package"

# 2. container
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from container" \
    -xa "start stop"

# 2. prop
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from prop" \
     -xa "get set"

# 2. session
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 2; and __fish_seen_subcommand_from session" \
    -xa "start stop"

# 3. prop
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 3; and __fish_seen_subcommand_from prop" \
    -xa "$props"
# 3. app
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 3; and __fish_seen_subcommand_from app; and __fish_seen_subcommand_from remove" \
    -xa "$installed_apps"


# OPTIONS
complete -c $cmd -s h -l help -d "Show help"
complete -c $cmd -s v -l version -d "Print version information"
complete -c $cmd -n "__fish_seen_subcommand_from init" -s i -l images_path -d "custom path to waydroid images"
complete -c $cmd -n "__fish_seen_subcommand_from init" -s f -l force -d "re-initialize configs and images"
complete -c $cmd -n "__fish_seen_subcommand_from init" -s c -l system_channel -d "custom system channel"
complete -c $cmd -n "__fish_seen_subcommand_from init" -s v -l vendor_channel -d "custom vendor channel"
complete -c $cmd -n "__fish_seen_subcommand_from init" -s r -l rom_type -d "rom type"
complete -c $cmd -n "__fish_seen_subcommand_from init" -s s -l system_type -d "system type"
complete -c $cmd -n "__fish_seen_subcommand_from log" -s n -l lines -d "LINES"
complete -c $cmd -n "__fish_seen_subcommand_from log" -s c -l clear -d  "clear the log"
complete -c $cmd -n "__fish_seen_subcommand_from session" -s o -l offline -d "just for updating configs"
