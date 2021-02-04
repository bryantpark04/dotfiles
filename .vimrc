set nocompatible
filetype indent plugin on
set hidden
set wildmenu
set nostartofline
set showcmd
" set visualbell
set belloff=all

syntax on
" set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4
set expandtab
" ret!
set backspace=indent,eol,start
noremap ; l
noremap l k
noremap k j
noremap j h
set smarttab
set smartindent
set autoread
set nobackup
set nowb
set noswapfile
set number " relativenumber

set ignorecase
set smartcase

set nostartofline
" set ruler
" set laststatus=2
set confirm

" set noshowmode " for airline
" let g:gruvbox_contrast_dark = 'hard'

" call plug#begin('~/.vim/plugged')
" Plug 'vim-airline/vim-airline'
" Plug 'morhetz/gruvbox'
" Plug 'arcticicestudio/nord-vim'
" Plug 'artanikin/vim-synthwave84'
" Plug 'dracula/vim', { 'as': 'dracula' }
" call plug#end()

function! <SID>StripTrailingWhitespaces()
  if !&binary && &filetype != 'diff'
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
  endif
endfun

" autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
autocmd FileType * autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

set packpath+=~/.vim
packadd! dracula
syntax enable
colorscheme dracula
