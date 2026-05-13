# dotfiles
все конфиги для void linux и swayfx

-------------------------------------

## Софт который я юзаю.
* ### OS: Void Linux, раньше был Arch Linux.
* ### Panel: Waybar, Swaybar.
* ### App start menu: Wofi.
* ### Shell: Bash(очень редко), Zsh.
* ### Terminal: Ghostty.
* ### Editor: Vim, Neovim
* ### Browser: Zen Browser
* ### System monitor: HTOP, BTOP
* ### Fetch: Fastfetch, Neofetch, Ufetch

-----------------------------------------

## Как поставить мои конфиги. 

### Для начала, не надо их пробовать для Arch, Debian, Gentoo, Crux, Slackware и прочих дистрибутивах. Либо переписывайте скрипты под свой пакетник и ставьте зависимости сами.

### Потом когда убедились что у вас именно Void ну или вы адекватно переписали скрипты, вы клонируете этот репозиторий. 
``` sh
  git clone https://github.com/deltadev-rsc/dotfiles.git
```

### Даём права скриптам, чтобы запускать их адекватно.
``` bash
  mv ~/dotfiles/scripts/ ~/
  chmod +x ~/scripts/load_depends.sh
  chmod +x ~/scripts/base_actions.sh
  chmod +x ~/scripts/run-sddm.sh
  chmod +x ~/scripts/screen.sh
  chmod +x ~/scripts/update.sh
```

### Запускаем скрипт по установке зависимостей и пермещению директорий с конфигами.
``` bash
  ~/scripts/load_depends.sh
  ~/scripts/base_actions.sh
```

### Перезапускаем комп и заходим в kde или sway(ну или любую вашу DE) и всё темы есть, иконки есть, а вот дальше сами.
