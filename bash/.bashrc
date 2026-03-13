[[ $- != *i* ]] && return

force_color_prompt=yes
COLOR_DEF='\[\033[0m\]'
COLOR_USER='\[\033[01;32m\]'
COLOR_PATH='\[\033[01;34m\]'
COLOR_GIT='\[\033[01;33m\]'
COLOR_DOLLAR='\[\033[01;31m\]'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="$COLOR_USER\u@\h$COLOR_DEF:$COLOR_PATH\w$COLOR_GIT\$(parse_git_branch)$COLOR_DEF$COLOR_DOLLAR\$ $COLOR_DEF"

alias ls='exa --icons --color=always --group-directories-first'
. "$HOME/.cargo/env"
