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
"  Plug 'tribela/vim-transparent'
    Plug 'sainnhe/gruvbox-material'
    Plug 'menisadi/kanagawa.vim'
    Plug 'ghifarit53/tokyonight-vim' 
call plug#end()

"  .__. ___    _   _   .___    _____   __  __ .___
"  |  |  |     |   |  |    |     |     |\  |  |__.
"  |__|  |     |   |  |    _     |     | \ |     |
"  |     |__|  |___|   |___|   __|__  _|_ \|  |__|

" tabline, bottom line
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '/'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:indentLine_char = ''
let g:airline_first_char = { '' : '' }
let g:airline_multiline = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

" icons
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackers = 0
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1
let g:DevIconsDefaultFolderOpenSymbol = ' '
let g:WebDevIconsUnicodeDecorateFileNodesPatternSymbols = {} 

" THEMES SETTINGS
" ayu 
let ayucolor="light"
let ayucolor="mirage"
let ayucolor="dark"

" tokyonight-vim
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
