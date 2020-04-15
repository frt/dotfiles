set nocompatible              " be iMproved, required

" Tab specific option
set tabstop=4                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple

set autoindent
set smartindent
set cindent     " stricter rules for C programs
filetype plugin indent on

set pastetoggle=<F2>

set hlsearch
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
syntax on

" selection colors
"highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40
highlight Visual term=reverse cterm=NONE ctermbg=White ctermfg=NONE guibg=White guifg=NONE

" highlight line under the cursor
set cursorline

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-airline options
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
