#!/usr/bin/bash

function deps {
    clear

    echo "██████                          ██████                   █████                                      "
    echo "█    ██                      █  █    ██                  █   ██                                     "
    echo "█    ██  ████  ██   █   █████   █    ██  ████ █      █   █   ██  ██    █     ███  █  ██  ████ ████  "
    echo "█    ██  █  █  ██ █████ █   █   █    ██  █  █ █      █   █   ██ █  █ █████   █       ██  █  █ █     "
    echo "█    ██  ████  ██   █   █   █   █    ██  ████  █    █    █   ██ █  █   █   █████  █  ██  ████ ████  "
    echo "█    ██  █     ██   █   █   █   █    ██  █      █  █     █   ██ █  █   █     █    █  ██  █       █  "
    echo "██████   ████  ██   ██  ███████ ██████   ███     ██      ████    ██    ███   █    █  ██  ███  ████  "
    echo "                  "
    echo "dotfiles for void linux"

    while true; do
        echo "starting script for installing depends: (y/n) "
        read is_start

        if [ "$is_start" = "y" ]; then
            echo "installing depends"

            echo "installing curl and wget"
            sudo xbps-install curl wget

            echo "installing fonts"
            sudo xbps-install nerd-fonts nerd-fonts-symbols-ttf nerd-fonts-ttf
            wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
            
            echo "installing tool for screenshot"
            sudo xbps-install grim
            sudo xbps-install slurp

            echo "installing base utils"
            sudo xbps-install wofi waybar
            sudo xbps-install vim neovim lua zsh
            sudo xbps-install ibus ibus-anthy ibus-m17n
            sudo xbps-install wireplumber pipewire alsa-utils pavucontrol
            sudo xbps-install network-manager-applet
            sudo xbps-install swaylock SwayNotificationCenter swayfx
            
            echo "installing fish shell and tide theme"
            sudo xbps-install fish-shell 
            curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
            fisher install IlanCosman/tide

            echo "installing utils"
            sudo xbps-install fastfetch htop cava yazi zoxide
            sudo xbps-install exa bat
    
            echo "installing icons"
            git clone https://github.com/vinceliuice/Colloid-icon-theme 
            cd ~/Colloid-icon-theme
            ./install.sh 
            ./tui-installer
            cd ../

            sudo xbps-install -S papirus-icon-theme 

            echo "installing zsh-plugins"
            mkdir ~/zsh-plugins/ && cd ~/zsh-plugins
            git clone https://github.com/zsh-users/zsh-autosuggestions 
            git clone https://github.com/tolkonepiu/catppuccin-powerlevel10k-theme
            git clone https://github.com/catppuccin/zsh-syntax-highlighting.git                                                                           ─╯
            cd zsh-syntax-highlighting/themes/
            cp -v catppuccin_mocha-zsh-syntax-highlighting.zsh ~/.zsh/
            cd ~/zsh-plugins/


            echo "installing plug.vim"
            curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
                https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

            # for catppuccin theme
            echo "installing catppuccin kde theme"
            git clone --depth=1 https://github.com/catppuccin/kde
            cd ~/kde
            ./install.sh

            echo "end installing depends"
        elif [ "$is_start" = "n" ]; then
            echo "script is not starting"
            break
        else
            echo "choose only y or n"
        fi
    done
}

deps
