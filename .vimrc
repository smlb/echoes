" Author: smlb
" Files: ~/.vim*
" Last Modified: 13/11/2017 

if has("autocmd")
  filetype on
  filetype indent on
  filetype plugin on
endif

" Syntax and colorscheme
if !has('g:syntax_on')|syntax enable|endif
set termguicolors
colorscheme quantum  
let g:quantum_italics=1

" Standard options
set showmatch
set wildmenu
set number 
set numberwidth=1
set relativenumber
set ttyfast
set cmdheight=2
set backspace=eol,start,indent
set ignorecase
set incsearch  
set hlsearch
set magic
set shell=/bin/bash
set mouse=a
set autoread
set smartcase
set linebreak
set textwidth=0
set display=lastline
set term=xterm-256color
set history=300
set noshowmode
set noerrorbells 
set showcmd

" File saving 
set noswapfile
set nobackup
set nowb

" Encoding 
set termencoding=utf-8
set encoding=utf-8
set fileformats=unix

" Tabs behaviour
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
 
" Paste
set pastetoggle=<F2>

" Plugins 
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
Plug 'neomake/neomake'
call plug#end()

" C Template 
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.c 0r ~/.vim/templates/main.c
    autocmd FileType sh,html :setlocal sw=2 ts=2 sts=2
  augroup END
endif

" Leader and Keybinds 
let mapleader = ","
let g:mapleader = ","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>rl :so $MYVIMRC<CR>
nmap <silent> <leader>tt gt<CR>
nmap <silent> <leader>hh :split<CR>
nmap <silent> <leader>vv :vsplit<CR>
nmap <silent> <leader>ff :NERDTreeToggle<CR>
nmap <leader>vcp :VimtexCompile<CR>
nmap <silent><leader>tn :tabnew<CR>
nmap <silent><leader>ss :sh<CR>
nmap <silent><leader>qq :q!<CR>
nmap <silent><leader>w :w<CR>

nmap j gj
nmap k gk
nnoremap <leader><space> :nohlsearch<CR>

imap jj <Esc>
xnoremap . :norm.<CR>
noremap <space> :

" Disable Page{Up,Down}
map <PageUp> <Nop> 
map <PageDown> <Nop>
imap <PageUp> <Nop>
imap <PageDown> <Nop>

" No distraction mode
nmap \p :Goyo<CR>
nmap \pp :Goyo!<CR>

" Modeline
function! AppendModeline()
  let l:modeline = printf(" vim: set ft=%s ts=%d sw=%d tw=%d %set :",
        \ &filetype, &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" Go to end of yanked/pasted text
vnoremap <silent> y y`]
nnoremap <silent> p ]p`]
vnoremap <silent> p ]p`]
nnoremap <silent> P [p`]
vnoremap <silent> P [p`]

command! Wq :wq
command! Q :q!
command! WS :w !sudo tee %

" Cursor behaviour 
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Mutt only
au BufRead /tmp/neomutt-* set tw=72

" Switch between rnu and nu 
set rnu
function! ToggleNumbersOn()
    set nu!
    set rnu
endfunction
function! ToggleRelativeOn()
    set rnu!
    set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" Netrw Options
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 15 
let g:netrw_altv= 1

let g:rehash256 = 1
let g:NERDTreeWinPos = "right"
let NERDTreeMinimalUI = 1
call neomake#configure#automake('w')

let g:vimwiki_list = [{'path':'/home/smlb/docs/wiki/text', 'path_html':'/home/smlb/docs/wiki/html/'}]

" Lightline config
let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" vim: set ft=vim ts=4 sw=4 tw=500 et :
