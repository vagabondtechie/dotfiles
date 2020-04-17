" Basic config
set nocompatible
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

" Setting the arrow keys to move around windows in a split-window environment
nnoremap <Left> <C-w><Left>
nnoremap <Right> <C-w><Right>
nnoremap <Up> <C-w><Up>
nnoremap <Down> <C-w><Down>

" Syntax and color
syntax on
" colorscheme darkblue
" set rtp+=~/.fzf

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Make it obvious where 80 characters is
set textwidth=120
set colorcolumn=+1

" Show the cursor line highlighted all the time
set cursorline
highlight CursorLine cterm=None ctermbg=darkblue ctermfg=white
