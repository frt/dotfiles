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

set visualbell
set hlsearch
set background=dark
let g:solarized_termtrans=1
colorscheme solarized
syntax on
set splitbelow

set foldmethod=syntax
set foldlevel=3

" selection colors
"highlight Visual cterm=NONE ctermbg=0 ctermfg=NONE guibg=Grey40
highlight Visual term=reverse cterm=NONE ctermbg=White ctermfg=NONE guibg=White guifg=NONE

" highlight line under the cursor
set cursorline

" matching parentesis highlight colors
highlight MatchParen cterm=bold ctermbg=none ctermfg=LightGreen

" syntastic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

" vim-airline options
let g:airline_theme = 'simple'
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" NerdTree
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
"let NERDTreeMinimalUI = 1
nnoremap <silent> <leader>nt :NERDTreeToggle<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>

" Mappings to access buffers.
nnoremap <silent> <C-h> :bprev<CR>
nnoremap <silent> <C-l> :bnext<CR>
nnoremap <silent> <C-b> :silent! e#<CR>

" Dart indentation
let g:dart_style_guide = 2

" clang_complete
let g:clang_use_library = 1
let g:clang_snippets = 1
let g:clang_complete_macros = 1

" Tagbar
nnoremap <silent> <leader>tt :TagbarToggle<CR>
let g:tagbar_sort = 0
let g:tagbar_autoclose = 1

" ack.vim
" use ag (the_silver_searcher)
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev ag Ack!
