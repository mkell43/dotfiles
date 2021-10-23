#=== If not running interactively, don't do anything
case $- in
*i*) ;;
*) return ;;
esac

#=== Unset all aliases so we don't reload with removed aliases.
unalias -a

#=== Backup the original path so we can reset it if necessary.
export ORIG_PATH=$PATH

#=== check the window size after each command and, if necessary,
#=== update the values of LINES and COLUMNS.
shopt -s checkwinsize

#=== UTF8 things
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#=== History things
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=
HISTFILESIZE=
HISTTIMEFORMAT="%F %T "

#=== Set home bin path.
PATH="$HOME/bin:$PATH"
