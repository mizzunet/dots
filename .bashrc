[[ $- == *i* ]] && . /usr/share/blesh/ble.sh
source /usr/share/doc/pkgfile/command-not-found.bash
shopt -s autocd
set -o noclobber
eval "$(zoxide init bash)"
shopt -s checkwinsize


