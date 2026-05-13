import "~/.vim/plugins.vim"
import "~/.vim/mappings.vim"

autocmd VimEnter * :colorscheme tokyonight
autocmd VimEnter * :AirlineTheme tokyonight

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=UTF-8
set laststatus=2

set termguicolors
set background=dark

if $COLORTERM == 'truecolor' || $COLORTERM == '24bit'
    set termguicolors
endif

set noshowmode
set nocompatible

syntax enable
if has('syntax')
  syntax enable
endif
