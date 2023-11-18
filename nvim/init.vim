set encoding=utf-8
language en_US.utf8
set clipboard=unnamedplus
set noshowmode
set scrolloff=3
set cursorline
let mapleader=","

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
Plugin 'nvim-tree/nvim-tree.lua'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'nvim-treesitter/nvim-treesitter-context'
Plugin 'lukas-reineke/indent-blankline.nvim'
Plugin 'numToStr/Comment.nvim'
Plugin 'lewis6991/gitsigns.nvim'

Plugin 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plugin 'nvim-tree/nvim-web-devicons'

call vundle#end()

" Coloscheme conf
set termguicolors
set t_ut=
" colorscheme desert
colorscheme nightfly

" File tree conf
map <leader>f :NvimTreeToggle<CR>

" clear search
map <leader>c :noh<CR>

" Tree-Sitter conf
autocmd VimEnter * TSEnable indent
autocmd VimEnter * TSEnable highlight

lua require("conf")
