set cmd zimdump

set -l action "list dump show info"

#########
# First #
#########
complete -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 1" \
    -xa "list dump show info"

###########
# Options #
###########
complete -c $cmd -xl idx -d "The index of the article to list/dump"
complete -c $cmd -xl url -d "The url of the article to list/dump"
complete -c $cmd -xl ns -d "The namespace of the article(s) to list/dump."
complete -c $cmd -xl details -d "Show details about the articles. Else, list only the url of the article(s)."
complete -c $cmd -l dir= -d "Directory where to dump the article(s) content."
complete -c $cmd -xl redirect -d "Use symlink to dump redirect articles. Else create html redirect file"
complete -c $cmd -s h -l help -d "version"
complete -c $cmd -s v -l version -d "help"



