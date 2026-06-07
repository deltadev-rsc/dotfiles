#!/usr/bin/bash

function remove_old_conf {
    echo "удаляем старый конфиг для sway, waybar, wofi, ghostty, nvim"
    rm -rf ~/.config/waybar/
    rm -rf ~/.config/wofi/
    rm -rf ~/.config/sway/
    rm -rf ~/.config/ghostty/
    rm -rf ~/.config/nvim/
    rm -rf ~/.config/fastfetch/

    echo "удаляем .zshrc, .vimrc, .bashrc"
    rm -f ~/.zshrc
    rm -f ~/.vimrc
    rm -f ~/.bashrc
}

function clone_nvim_distro {
    echo "клонируем DeltaNvim в ~/.config/nvim"
    git clone https://github.com/deltadev-rsc/DeltaNvim/
    cp -r ~/DeltaNvim/src/ ~/.config/nvim/
    rm -rf ~/.config/nvim/lazy-lock.json
}

function add_new_conf {
    echo "перемещаем новый конфиг"
    mv ~/dotfiles/.config/sway ~/.config/
    mv ~/dotfiles/.config/waybar/ ~/.config/
    mv ~/dotfiles/.config/wofi/ ~/.config
    mv ~/dotfiles/.config/ghostty/ ~/.config
    mv ~/dotfies/.config/fastfetch/ ~/.config/

    echo "перемещаем новые .rc файлы"
    mv ~/dotfiles/bash/.bashrc ~/
    mv ~/dotfiles/zsh-conf/.zsh/ ~/
    mv ~/dotfiles/zsh-conf/.zshrc ~/
    mv ~/dotfiles/vim-conf/.vimrc ~/
    mv ~/dotfiles/vim-conf/.vim/plugins.vim ~/.vim
    mv ~/dotfiles/vim-conf/.vim/mappings.vim ~/.vim
}

function move_walls {
    echo "перемещаем обои в ~/"
    mv ~/dotfiles/walls/ ~/
}

function main {
    remove_old_conf
    clone_nvim_distro
    add_new_conf
    move_walls
}

main
