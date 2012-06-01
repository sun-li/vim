set nocompatible
set modelines=0 

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3

set autoindent
set smartindent
set backspace=indent,eol,start

set relativenumber

set showmode
set showcmd
set hidden

set wildmenu
set wildmode=list:longest

set visualbell
set cursorline
set ttyfast

set ruler

set laststatus=2

set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80

nnoremap ; :
inoremap jj <ESC>

au FocusLost * :wa

set guifont=Menlo:h12
set lines=50
set columns=100

set guioptions-=T

colorscheme molokai
set transparency=5

set autoread

nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

nnoremap <leader>w <C-w>v<C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

call pathogen#infect()
syntax on
:filetype plugin indent on
