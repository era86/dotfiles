set nocompatible
filetype off

" runtime path to include Vundle and init
set rtp+=~/.vim/bundle/Vundle.vim

" Vundle Plugins BEGIN
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'The-NERD-Commenter'
Plugin 'mileszs/ack.vim'
Plugin 'fugitive.vim'
Plugin 'christoomey/vim-tmux-navigator'

" Vundle Plugins END
call vundle#end()

filetype plugin indent on

" remap leader to comma
let mapleader = ','

" shortcut to create a new tab
nnoremap <leader>T :tabnew<CR>

" setting tab expansion
set tabstop=2
set shiftwidth=2
set expandtab

" shortcut to equalize all panes
nmap <leader>W <C-w>=<CR>

" shortcut to splitting panes
nmap <leader>sj :rightbelow new<CR>
nmap <leader>sk :leftabove new<CR>
nmap <leader>sh :leftabove vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>

" shortcut for closing an open buffer
nmap <leader>q :q<CR>

" setting text-search highighting, incremental, case-insensitivity
set hlsearch
set incsearch
set ignorecase

" shortcut to clear text-search highlighting
nmap <leader>h :nohl<CR>

" shortcut to open CtrlP
nmap <leader>t :CtrlP<CR>

" setting relative line-numbers
set relativenumber

" shortcut to open Nerdtree
nmap <leader>f :NERDTree<CR>

syntax on

colorscheme slate
