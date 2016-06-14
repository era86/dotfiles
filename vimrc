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

" Tabs
nnoremap <leader>T :tabnew<CR>

set tabstop=2
set shiftwidth=2
set expandtab

" Equalize all panes
nmap <leader>W <C-w>=<CR>

" Pane splits
nmap <leader>sj :rightbelow new<CR>
nmap <leader>sk :leftabove new<CR>
nmap <leader>sh :leftabove vnew<CR>
nmap <leader>sl :rightbelow vnew<CR>

" shortcut for quitting
nmap <leader>q :q<CR>

" shortcut for page-up, page-down
nmap <leader>j <C-d>
nmap <leader>k <C-u>

" searching functionality
set hlsearch
set incsearch
set ignorecase

" clear search highlighting
nmap <leader>h :nohl<CR>

" Ack current word
nmap <C-a> :Ack<CR>

" shortcut for CtrlP
nmap <leader>t :CtrlP<CR>

" line numbers
set relativenumber
set number

" nerdtree
nmap <leader>f :NERDTree<CR>

syntax on
colorscheme slate
