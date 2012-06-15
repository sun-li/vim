" " " " " " " " " " " " " " " " " " "
"  A comfortable .vimrc for MacVim  "
"       Maintained by SUN Li        "
"        http://MrSunLi.com         "
"     http://github.com/sun-li      "
" " " " " " " " " " " " " " " " " " "

" Following comments tend to explain 'why' to use those settings
" Please use command ':h' to check 'what' those settings are

" -------------------- Plug-in Dependencies -------------------- 
" Following settings depend on few plug-ins:
"   vim-powerline
"   vim-unimpaired
"   pathogen

" -------------------- Basic -------------------- 

" This .vimrc file does not target to the legacy vi
set nocompatible

" Preventing security risk
set modelines=0 

" Hiding tool bar on MacVim
set guioptions-=T

" More comfortable leader key
let mapleader = ","

" -------------------- Display -------------------- 

" Assuming 'molokai' color scheme has been installed
colorscheme molokai

" Enable font patcher for plug-in vim-powerline 
let g:Powerline_symbols = 'fancy'
" 'Menlo for Powerline' is a font patcher for vim-powerline on MacVim
set guifont=Menlo\ for\ Powerline:h12
" Font Menlo does not have enough line space
set linespace=1

" NOTE: It seems some plug-ins prevent changing 'lines=' 
" Need to reset (disable then enable) pathogen plug-in after changing 'lines=' 

" Screen size 90 x 40 seems like a nice balance 
set lines=40
set columns=90
set colorcolumn=80

" More comfortable cursor
set scrolloff=5
set cursorline

" Easier for in-screen jumping
set relativenumber

" Displaying more information on status bar
set showmode
set showcmd
set ruler
set laststatus=2

" Soft-wrap long text and show a break symbol
set wrap
set linebreak
set showbreak=…

" Checking invisible characters
nmap <leader>l :set list!<CR>
" Using the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" -------------------- Mode -------------------- 

" Alternative way to go back command mode
inoremap jj <ESC>

" -------------------- Motion -------------------- 

" More comfortable for browsing text
nmap <Space> <PageDown>
nmap <S-Space> <PageUp>

" Assuming vim-unimpaired.vim has been installed
" and C-up and C-down are disabled in System preference -> Keyboard
" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e
" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" Easier for cursor moving
set whichwrap+=<,>,h,l

nnoremap <tab> %
vnoremap <tab> %

" Moving to center screen on next/previous selection
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
" also last and next jump 
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" -------------------- Programming source code -------------------- 

set encoding=utf-8

syntax on

filetype plugin on
filetype indent on

" Using space instead of tab (especially useful for Python)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent
set backspace=indent,eol,start

set foldmethod=indent
set foldlevel=99

set wildmenu
set wildmode=list:longest

" More comfortable searching options
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
" Removing searching results quickly
nnoremap <leader><space> :noh<cr>

" -------------------- Windows and tabs -------------------- 

" More comfortable to manage multi-window
nnoremap <leader>w <C-w>T
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" More comfortable to manage multi-tab on MacVim
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

" -------------------- Spell checking -------------------- 

map <leader>ss :setlocal spell!<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>sc z=

" -------------------- Files and buffers -------------------- 

set hidden

set autoread

" Version control tools can do better job than VIM
set nobackup
set nowb
set noswapfile

" Auto-save 
au FocusLost * :wa

" Delete trailing white space on save, useful for Python and CoffeeScript 
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Return to last edit position when opening files 
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember status of VIM
set viminfo^=%

" Twisting .vimrc easily
nnoremap <leader>ev :tabedit $MYVIMRC<cr>

" -------------------- Pathogen plug-in management -------------------- 

" Assuming Pathogen plug-in is installed
call pathogen#infect()
call pathogen#helptags()
