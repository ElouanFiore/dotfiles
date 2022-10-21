set encoding=utf-8
language en_US.utf8
set clipboard=unnamedplus
set noshowmode

" Line Number conf
set number
set relativenumber

" Vundle conf
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bluz71/vim-nightfly-guicolors'
Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'feline-nvim/feline.nvim'
Plugin 'nvim-tree/nvim-tree.lua'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'nvim-treesitter/nvim-treesitter-context'
Plugin 'lukas-reineke/indent-blankline.nvim'
Plugin 'numToStr/Comment.nvim'
Plugin 'lewis6991/gitsigns.nvim'

call vundle#end()

" Coloscheme conf
set termguicolors
set t_ut=
" colorscheme desert
colorscheme nightfly

" File tree conf
nnoremap <C-t> :NvimTreeToggle<CR>

" Tre-Sitter conf
autocmd VimEnter * TSEnable indent
autocmd VimEnter * TSEnable highlight

lua require("conf")
