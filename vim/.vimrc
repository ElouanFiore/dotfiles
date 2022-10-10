language en_US.utf8
set encoding=utf-8

" Vundle conf
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bluz71/vim-nightfly-guicolors'

call vundle#end()
filetype plugin indent on

" folding conf
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Line Number conf
set number
set relativenumber

" coloscheme
set termguicolors
" colorscheme desert
colorscheme nightfly

set clipboard=unnamedplus
set tabstop=4
syntax on
