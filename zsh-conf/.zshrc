export ZSH="$HOME/.oh-my-zsh"
export ZSH_CONF="$HOME/.zsh"
export "MICRO_TRUECOLOR=1"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch $(uname -m)"

#ZSH_THEME="jonathan"
ZSH_THEME="awesomepanda"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bira"
#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="agnoster"

zstyle ':catppuccin:p10k' 'theme' 'rainbow'
zstyle ':catppuccin:p10k' 'flavour' 'mocha'

# variables
CASE_SENSITIVE="true"
ENABLE_CORRECTION="true"

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

source $ZSH_CONF/plugins.zsh
source $ZSH_CONF/aliases.zsh
source ~/.p10k.zsh

# functions
function dltsh() { cd ~/open-delta/kernel/shell/ && make && make run && cd ~/ }
function screenfetch() { cd ~/screenFetch/ && ./screenfetch-dev && cd ~/ }

eval "$(zoxide init zsh)"

# adb
export PATH=$PATH:/opt/platform-tools
export PATH="$HOME/.fuelup/bin:$PATH"
