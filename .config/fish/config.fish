if status is-interactive
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

if command -v tree >/dev/null
    alias tree='tree -C -F --dirsfirst'
end

set -U fish_history 50000

set -g fish_complete_path $fish_complete_path /usr/share/fish/completions

zoxide init fish | source

export PATH="$HOME/.fuelup/bin:$PATH"
