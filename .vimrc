set nocompatible      " Turn off compat mode
syntax on             " Turn on Syntax Highlight
set hlsearch          " Turn on highlight searching
"set tabstop=2         " Two spaces per 'tab'
"set expandtab         " Expand all tabs to spaces
set showmatch         " show matching braces

" for pathogen
" http://sontek.net/turning-vim-into-a-modern-python-ide
"filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()

filetype on
filetype plugin indent on
set foldmethod=indent
set foldlevel=99

" Vertical Split: <ctrl-w> v
" Horizontal Split: <ctrl-w> s
" Close current window: <ctrl-w> q
"
" window mapping
" down window: <ctrl-w> j : <ctrl-j>
map <c-j> <c-w>j
" up window: <ctrl-w> k : <ctrl-k>
map <c-k> <c-w>k
" right window: <ctrl-w> l : <ctrl-l>
map <c-l> <c-w>l
" left window: <ctrl-w> h : <ctrl-h>
map <c-h> <c-w>h

"set expandtab
"set shiftwidth=2
"set softtabstop=2
