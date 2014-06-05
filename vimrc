set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set showmatch
set autoindent
set si
set wrap

filetype on
filetype plugin on
filetype indent on
syntax on
set autoread
set ruler

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set hlsearch
set magic
set incsearch

set showmatch
set mat=2

syntax enable

execute pathogen#infect()
execute pathogen#helptags()
