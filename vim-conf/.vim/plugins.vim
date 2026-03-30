call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'catppuccin/vim', {'as': 'catppuccin' }
  Plug 'ayu-theme/ayu-vim'
  Plug 'morhetz/gruvbox'
  Plug 'sainnhe/everforest'
  Plug 'joshdick/onedark.vim'
  Plug 'sonph/onehalf'
  Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
  Plug 'nordtheme/vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'tribela/vim-transparent'
call plug#end()

let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:indentLine_char = ''
let g:airline_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
let ayucolor="light"
let ayucolor="mirage"
let ayucolor="dark"
