set nocompatible
filetype off                   				" required for Vundle to work

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype plugin indent on     				" required for Vundle to work

" Bundles on github to be managed by Vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'

" Bundles on vim.org to be managed by Vundle

" Basic settings
set term=screen-256color
set t_Co=256
set background=dark
color jellybeans

syntax on									" Enable syntax hightlighting
set visualbell								" Prevent 'sound': no beeping.
set tabstop=4
set shiftwidth=4
set softtabstop=4							" Using 4 spaces when hitting 'tab' in INSERT mode
set smartcase
set incsearch
set number 									" Enables line numbers

set ignorecase								" Searches are case insensitive...
set autoindent								" Automatically indent
set smartindent								" Do smart indenting

set autoread								" Autoread changed files"

" Keybindings for easy buffer and tab-navigation
nmap <silent> ,. :bnext<CR> " Next buffer
nmap <silent> ,m :bprev<CR> " Previous buffer
nmap <silent> ;' :tabnext<CR> " Next tab
nmap <silent> ;l :tabprev<CR> " Previous tab

" Setting backup dirs and disabling swapping
set backupdir=~/.vim/backup//				" where to put backup files.
set directory=~/.vim/tmp//					" where to put swap files.
set nobackup								" disable backups
set noswapfile								" disable swap files
