#=== Add an "alert" alias for long running commands.  Use like so:
#===  sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#=== xlip & xsel don't stick in my head like pbcopy & pbpaste
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

#=== Reload .bashrc
alias rp="source ~/.bashrc"

#=== Format `echo $PATH` output for better legibility.
# Stupid single quotes:
#    https://github.com/koalaman/shellcheck/wiki/SC1003
#    https://web.archive.org/web/20201121032121/https://github.com/koalaman/shellcheck/wiki/SC1003
alias ppath='echo "${PATH//:/$'\''\n'\''}"'
