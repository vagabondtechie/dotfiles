" Basic config
set nocompatible
set backspace=eol,start,indent

" Setting Leader Key and key remaps
let mapleader=" "
nnoremap <Leader>s :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>h :sp<CR>
nnoremap <Leader>v :vs<CR>
nnoremap <Leader>o :set number! relativenumber!<CR>

" No backup files
set nobackup
set nowb
set noswapfile

" Tab and space to tab related configs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set number
set autoindent

" Status line related configs
set laststatus=2

" Search related config
set ignorecase
set smartcase
set hlsearch
set incsearch

" Setting the arrow keys to move around windows in a split-window environment
nnoremap <Left> <C-w><Left>
nnoremap <Right> <C-w><Right>
nnoremap <Up> <C-w><Up>
nnoremap <Down> <C-w><Down>

" Syntax and color
syntax on

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Hard wrapping text beyond 120 characters 
" set textwidth=120

" Show the cursor line highlighted all the time
set cursorline
highlight CursorLine cterm=None ctermbg=darkblue ctermfg=white

set rtp+=~/.fzf
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()
