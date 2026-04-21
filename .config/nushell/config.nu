# config.nu
#
# Installed by:
# version = "0.110.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
source ~/.config/nushell/catppuccin_mocha.nu

def disks () {
    sys disks | sort-by free | reverse | first (1 + 2) | update device /dev/sda
}

# aliases
alias ff = fastfetch
alias nf = neofetch
alias nv = nvim
alias dnv = doas nvim
alias v = vim
alias dv = doas vim
alias cat = bat --theme=Catppuccin\ Mocha
