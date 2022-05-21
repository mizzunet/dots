set -l actions "start restart update reload stop up down route unroute down-srcip status statusall listalgs listpubkeys listcerts listcacerts listaacerts listocspcerts listacerts listgroups listcainfos listcrls listocsp listplugins listall listcounters resetcounters leases rereadsecrets rereadcacerts rereadaacerts rereadocspcerts rereadacerts rereadcrls rereadall purgecerts purgecrls purgeike purgeocsp scepclient pki stroke version"

set -l connections (cat /etc/ipsec.conf | grep conn | cut -d' ' -f2)

set cmd ipsec

# Disable files
complete -f $cmd

# First
complete -k -c $cmd -n "test (__fish_number_of_cmd_args_wo_opts) = 1" \
    -xa "$actions"


# Second
complete -c $cmd -n "__fish_seen_subcommand_from up route unroute status" \
    -a "(cat /etc/ipsec.conf | grep conn | cut -d' ' -f2)"

complete -c $cmd -n "__fish_seen_subcommand_from down" \
    -a "(ipsec status | tail +4 | grep \] | cut -d' ' -f4 | cut -d'[' -f1)"

# Options
complete -c $cmd -s h -l help -d "Show help"

