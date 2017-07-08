filetype plugin on
filetype indent on

" Some options
set nocompatible
set showmatch
set wildmenu
set number
set ruler
set cmdheight=2
set backspace=eol,start,indent
set ignorecase
set incsearch
set magic
set background=dark
set t_Co=256
set shell=/bin/zsh
set mouse=a
set autoread
set smartcase
set visualbell
set linebreak
set textwidth=0
set display=lastline

set history=1000
" Don't save nothing
set noswapfile
set nobackup
set nowb

" Encoding
set termencoding=utf-8
set encoding=utf-8
scriptencoding utf-8
set ffs=unix

set noerrorbells

syntax enable
colorscheme smlb 

" Some indent commands
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai 
set si 
set wrap 
set laststatus=2
     
set pastetoggle=<F2>

" command W w !sudo tee % > /dev/null

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'itchyny/lightline.vim'
call plug#end()             

try
  set undodir=~/.vim/tmp/undo
  set undofile
catch
endtry

let g:NERDTreeWinPos = "right"
let mapleader = ","
let g:mapleader = ","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>rl :so $MYVIMRC<CR>
nmap <silent> <leader>tt gt<CR>
nmap <silent> <leader>hh :split<CR>
nmap <silent> <leader>vv :vsplit<CR>
nmap <silent> <leader>ff :NERDTreeToggle<CR>
nmap <silent> <leader>cs :set background=light<CR>
map <leader>t<leader> :tabnext 

let g:rehash256 = 1
let &runtimepath.=',~/.vim/bundle/ale'
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

"vim: set ft=vim ts=2 sw=2 tw=500 et :
