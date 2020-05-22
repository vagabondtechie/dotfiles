" Basic config
set nocompatible
set backspace=eol,start,indent

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
set autoindent

" Status line related configs
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" Search related config
set ignorecase
set smartcase
set hlsearch
set incsearch

" Setting Leader Key and key remaps
let mapleader=" "
nnoremap <Leader>s :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>o :edit 

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
call plug#end()
