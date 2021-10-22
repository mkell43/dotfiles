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
