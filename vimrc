" " " " " " " " " " " " " " " " " " " "
"  A comfortable .vimrc (for MacVim)  "
"        Maintained by SUN, Li        "
"         http://MrSunLi.com          "
"      http://github.com/sun-li       "
" " " " " " " " " " " " " " " " " " " "

" I tend to explain 'why' to use following settings in my comments
" Please use command ':h' to check 'what' do those settings mean

" -------------------- Dependencies -------------------- 
" Assuming following plug-ins have been installed
"   pathogen
"   vim-powerline
"   vim-unimpaired
"   command-t
"   tagbar
"   tabular
" Assuming 'molokai' color scheme has been installed

" -------------------- General -------------------- 

" This .vimrc file target to MacVim
set nocompatible

" Preventing security risk
set modelines=0 

" More comfortable leader key
let mapleader = ","

" -------------------- Plug-in Pathogen -------------------- 

call pathogen#infect()
call pathogen#helptags()

" -------------------- MacVim Special -------------------- 

if has("gui_macvim")
    " Removing unnecessary GUI elements
    set guioptions-=T
    set guioptions-=r
    set guioptions-=R
    set guioptions-=l
    set guioptions-=L
    set guioptions-=b

    " Mac style shift key
    let macvim_hig_shift_movement = 1

    " Making use full screen
    set fuoptions=maxvert,maxhorz
endif

" -------------------- Display -------------------- 

colorscheme molokai

set gcr=a:blinkon0

" Menlo does not have enough line space
set linespace=1

set lines=45
set columns=85
set colorcolumn=80

" More comfortable cursor
set scrolloff=3
set cursorline

" Easier for in-screen jumping
set relativenumber

" Displaying more information on status bar
set showmode
set showcmd
set ruler
set laststatus=2
"set cmdheight=2

" Soft-wrap long text and show a break symbol
set wrap
set linebreak
set showbreak=…

" Checking invisible characters
nmap <silent> <leader>l :set list!<CR>
" Using the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" -------------------- Mode -------------------- 

" Alternative way to go back command mode
inoremap jj <ESC>

" -------------------- Motion -------------------- 

" More comfortable for browsing text
nmap <Space> <PageDown>
nmap <S-Space> <PageUp>
nmap <S-UP> <C-Y>
nmap <S-DOWN> <C-E>

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

" Moving to center screen on next/previous selection
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
" also last and next jump 
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" -------------------- Editing -------------------- 

" Toggle UPPER CASE, lower case and Title Case
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ ygv"=TwiddleCase(@")<CR>Pgv

" More comfortable Enter
nnoremap <CR> O<esc>j
nnoremap <S-Enter> i<cr><esc>

" Indent if cursor is at the beginning of a line.  Otherwise, do completion
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" -------------------- Coding -------------------- 

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
nnoremap <silent> <leader><space> :noh<cr>

set foldmethod=indent
set foldlevel=99
set foldenable

nnoremap <leader>f0 :set foldlevel=0<CR>
nnoremap <leader>f1 :set foldlevel=1<CR>
nnoremap <leader>f2 :set foldlevel=2<CR>
nnoremap <leader>f3 :set foldlevel=3<CR>
nnoremap <leader>f4 :set foldlevel=4<CR>
nnoremap <leader>f5 :set foldlevel=5<CR>
nnoremap <leader>f6 :set foldlevel=6<CR>
nnoremap <leader>f7 :set foldlevel=7<CR>
nnoremap <leader>f8 :set foldlevel=8<CR>
nnoremap <leader>f9 :set foldlevel=9<CR>

" -------------------- Windows and tabs -------------------- 

" Split new window in a more comfortale way
nnoremap <leader>sh :leftabove vnew<cr>
nnoremap <leader>sl :rightbelow vnew<cr>
nnoremap <leader>sk :leftabove new<cr>
nnoremap <leader>sj :rightbelow new<cr>

" More comfortable to navigate multi-window
set winminheight=0
nnoremap <C-j> <C-w>j<C-w>_
nnoremap <C-k> <C-w>k<C-w>_

nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Make use desktop space
nnoremap <leader>1 :set columns=85<cr>
    " One extra column for window's border
nnoremap <leader>2 :set columns=171<cr>\|:wincmd =<cr>

" Also make use tab
cabbrev help tab help
cabbrev h tab h
nnoremap <leader>w <C-w>T

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

" -------------------- Buffers -------------------- 

set hidden

set autoread

" Version control tools can do better job than VIM
set nobackup
set nowb
set noswapfile

" Quit window quickly
nnoremap <leader>q :q<cr>

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
autocmd BufWrite *.md :call DeleteTrailingWS()

" Return to last edit position when opening files 
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember status of VIM
set viminfo^=%

" Twisting .vimrc easily
nnoremap <leader>ev :tabedit $MYVIMRC<cr>
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost vimrc source %

" -------------------- Plug-in Powerline -------------------- 

" Enabling font patcher for plug-in vim-powerline 
let g:Powerline_symbols = 'fancy'
" 'Menlo for Powerline' is a font patcher for vim-powerline on MacVim
set guifont=Menlo\ for\ Powerline:h12

" -------------------- Plug-in Command-T -------------------- 

let g:CommandTMaxHeight = 20

" Open file
noremap <leader>o :CommandT<cr>
noremap <leader>O :CommandTFlush<cr>\|:CommandT<cr>

" Open buffer
nnoremap <leader>b :CommandTBuffer<cr>

" -------------------- Plug-in Tagbar -------------------- 

nnoremap <leader>t :TagbarToggle<cr>

" Saving space
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1
let g:tagbar_expand = 1

" -------------------- Plug-in Tabular -------------------- 

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a:: :Tabularize /:\zs<CR>
vmap <Leader>a:: :Tabularize /:\zs<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>


