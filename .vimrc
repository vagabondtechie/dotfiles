" Basic config
set nocompatible
set backspace=eol,start,indent

" Setting Leader Key and key remaps
let mapleader=" "
nnoremap <Leader>s :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>f :Files<CR>
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

" Syntax and color
syntax on

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Show the cursor line highlighted all the time
set cursorline

set rtp+=~/.fzf
call plug#begin()
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
call plug#end()

let g:fzf_layout = { 'window': '10new' } 
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND='find .'
colorscheme gruvbox
set background=dark
