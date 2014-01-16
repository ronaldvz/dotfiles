set nocompatible
filetype off                          " required for Vundle to work
                                
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

filetype plugin indent on             " required for Vundle to work

" Bundles on github to be managed by Vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'msanders/snipmate.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'airblade/vim-gitgutter'
Bundle 'Lokaltog/powerline'

" Bundles on vim.org to be managed by Vundle
" -- None at the moment

syntax on                             " Enable syntax hightlighting
set background=dark
" Basic settings
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme solarized

set visualbell                        " Prevent 'sound': no beeping.
set tabstop=2
set expandtab                         " Use spaces, not tabs
set shiftwidth=2
set softtabstop=2                     " Using 4 spaces when hitting 'tab' in INSERT mode
set smartcase
set incsearch
set number                            " Enables line numbers

set ignorecase                        " Searches are case insensitive...
set autoindent                        " Automatically indent
set smartindent                       " Do smart indenting

set autoread                          " Autoread changed files

" Keybindings for easy buffer and tab-navigation
nmap <silent> ,. :bnext<CR> " Next buffer
nmap <silent> ,m :bprev<CR> " Previous buffer
nmap <silent> ;' :tabnext<CR> " Next tab
nmap <silent> ;l :tabprev<CR> " Previous tab

" Setting backup dirs and disabling swapping
set backupdir=~/.vim/backup//         " where to put backup files.
set directory=~/.vim/tmp//            " where to put swap files.
set nobackup                          " disable backups
set noswapfile                        " disable swap files

" Keybindings
" Ctrl-N for enabling / disabling line numbers
:nnoremap <C-N><C-N> :set invnumber<CR>

" Ctrl-W for enabling / disablig line wrapping
":nnoremap <C-w><C-w> :set invwrap<CR>

" Ctrl-P twice for enabling pasting, without vim doing reformatting and stuff
:nnoremap <C-p><C-p> :set invpaste<CR>

" Powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
set laststatus=2                      " always display powerline in all windows
set noshowmode                        " hide default text mode text (e.g. -- INSERT -- below the statusline

" Add basic Json syntax highlighting (without using plugins)
autocmd BufNewFile,BufRead *.json set ft=javascript
