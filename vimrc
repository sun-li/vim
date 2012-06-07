" " " " " " " " " " " " " " " "
"  My .vimrc file for MacVim  "
"  Maintained by SUN, Li      "
"  http://MrSunLi.com         "
"  http://github.com/sun-li   "
" " " " " " " " " " " " " " " "

" This .vimrc file is developed for MacVim
set nocompatible

" Preventing modeline security risk
set modelines=0 

" Enable vim-powerline font patcher
let g:Powerline_symbols = 'fancy'
" Menlo for Powerline is a font patcher for vim-powerline
set guifont=Menlo\ for\ Powerline:h12
" It seems some plug-ins prevent changing lines=, must reset (disable and enable) pathogen plug-in (which is in the bottom of this file) after changing lines= 
set lines=40
set columns=90
set colorcolumn=80

let mapleader = ","

nnoremap <leader>ev :tabedit $MYVIMRC<cr>

set encoding=utf-8
syntax on
filetype plugin on
filetype indent on

" Always using space
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent
set backspace=indent,eol,start

set scrolloff=2
set whichwrap+=<,>,h,l

set relativenumber
set showmode
set showcmd
set hidden
set ruler
set laststatus=2

set wildmenu
set wildmode=list:longest

set visualbell
set cursorline

" Version control tools would take over VIM for backups
set nobackup
set nowb
set noswapfile

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

nnoremap <leader><space> :noh<cr>

nnoremap <tab> %
vnoremap <tab> %

nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

inoremap jj <ESC>

au FocusLost * :wa

" Wrap long text but do not break any word and show a break symbol
set wrap
set linebreak
set showbreak=…

" Slightly higher line height
set linespace=1

" Disable toolbar in MacVim
set guioptions-=T

colorscheme molokai

set autoread

nnoremap <leader>w <C-w>T
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <D-]> gt
map <D-[> gT
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

set foldmethod=indent
set foldlevel=99

" Assuming vim-unimpaired.vim has been installed
" MacVim need to disable C-up and C-down in System preference Keyboard
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Toggle spell checking
map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sc z=

" Return to last edit position when opening files 
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember status of VIM
set viminfo^=%

" Assuming Pathogen plug-in is installed
call pathogen#infect()
call pathogen#helptags()
