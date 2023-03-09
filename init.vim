" ***** PLUGINS ***** {{{

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.vim/bundle')

" Vundle
Plugin 'VundleVim/Vundle.vim'

" Themes
Plugin 'arcticicestudio/nord-vim'
Plugin 'pulkomandy/c.vim'
Plugin 'dikiaap/minimalist'

" FuzzyFile
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'

" Floatterm
Plugin 'voldikss/vim-floaterm'

call vundle#end()

filetype plugin indent on

" }}}


" ***** SETTINGS ***** {{{

set nocompatible
set number
set cursorline
set shiftwidth=3
set tabstop=3
set expandtab
set scrolloff=9
set noswapfile
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmatch
set hlsearch
set history=999
set foldmethod=marker
set formatoptions-=c
set formatoptions-=r 
set formatoptions-=o
set encoding=utf-8
set t_Co=256

" Mapleader
let mapleader = "!"

" FuzzyFile
let g:fzf_layout = { 'down': '39%' }

" Floaterm
let g:floaterm_wintype = 'vsplit'

filetype on
filetype plugin on
filetype indent on
syntax on

" Color
colorscheme minimalist


" }}}


" ***** MAPPINGS  ***** {{{

" Press Ctrl-X to escape
inoremap <c-x> <esc>

" Press Ctrl-Z to undo
nnoremap <c-z> undo

" Press Ctrl-Y to redo
nnoremap <c-y> redo

" Press Ctrl-S to save
nnoremap <c-s> :w<cr>
inoremap <c-s> <esc>:w<cr>a

" Press Ctrl-P to seacrh for file with fuzzy-file 
nnoremap <c-p> :Files<cr>

" Press Ctrl-T to create new Floaterm instance
nnoremap <c-t> :FloatermNew<cr>

" Press space to type : in command mode
nnoremap <space> :

" Press Ctrl-ENTER to toggle vim folder on/off
nnoremap <c-enter> za

" Split window
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize windows
nnoremap <c-up> <c-w>+
nnoremap <c-down> <c-w>-
nnoremap <c-left> <c-w>>
nnoremap <c-right> <c-w><

" Enclose ' " ( [ { Mappings
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<cr> {<cr>}<esc>O
inoremap {;<cr> {<cr>};<esc>O

" }}}


" ***** VIMSCRIPT ***** {{{

" Marker based folding in vim file
autocmd FileType vim setlocal foldmethod=marker

" Auto Complete
setlocal omnifunc=clangd#Complete
autocmd FileType c,cpp setlocal omnifunc=clangd#Complete

" }}}


" ***** STATUS LINE ***** {{{

set statusline=
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=%=
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2

" }}}
