" Basic config
set backspace=eol,start,indent
set nobackup
set nowb
set noswapfile
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set relativenumber
set autoindent
set nocompatible

" Search related config
set ignorecase
set smartcase
set hlsearch
set incsearch

" Setting Leader Key and key remaps
let mapleader=","
nnoremap <Leader>s :w<CR>
nnoremap <Leader>x :wq<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>f :FZF<CR>

" Setting the arrow keys to no-ops
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Syntax and color
syntax on
" colorscheme darkblue
" set rtp+=~/.fzf

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1

" Show the cursor line highlighted all the time
set ruler
