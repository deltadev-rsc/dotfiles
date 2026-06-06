if status is-interactive
# Commands to run in interactive sessions can go here
end

set -g -x fish_greeting ''

set -gx EDITOR nvim

set -gx VISUAL $EDITOR

alias nv="nvim"
alias dnv="doas nvim"
alias v="vim"
alias dv="doas vim"
alias ls="exa --level=1 --icons --color=always --no-time --no-user --no-permissions"
alias cat="bat --theme=base16-256"
alias sudo="doas"
alias ff="fastfetch"
alias lg="lazygit"
alias yz="yazi"
alias nf="neofetch"
alias mkln="make clean"
alias install="sudo xbps-install -S"
alias update="sudo xbps-install -Su"
alias remove="sudo xbps-remove"
alias fzf="fzf --border --layout reverse-list --margin 1"

if command -v tree >/dev/null
    alias tree='tree -C -F --dirsfirst'
end

set -U fish_history 50000

set -g fish_complete_path $fish_complete_path /usr/share/fish/completions

zoxide init fish | source
