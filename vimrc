set nocompatible
filetype off                          " required for Vundle to work
                                
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" Bundles on github to be managed by Vundle
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'airblade/vim-gitgutter'
Bundle 'airblade/vim-rooter'
Bundle 'Lokaltog/powerline'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/syntastic'
Bundle 'Raimondi/delimitMate'
Bundle 'mileszs/ack.vim'
Bundle 'sandeepcr529/Buffet.vim'
Bundle 'jamessan/vim-gnupg'
" Bundle 'ervandew/supertab'
Bundle 'msanders/snipmate.vim'

" Colors
Bundle 'altercation/vim-colors-solarized'
Bundle 'cschlueter/vim-mustang'
Bundle 'sjl/badwolf'
Bundle 'whatyouhide/vim-gotham'
Bundle 'morhetz/gruvbox'
Bundle 'zeis/vim-kolor'
Bundle 'tomasr/molokai'

" Bundles on vim.org to be managed by Vundle
" -- None at the moment

call vundle#end()
filetype plugin indent on             " required for Vundle to work

syntax on                             " Enable syntax hightlighting
set background=dark
" Basic settings
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme molokai

set clipboard=unnamed

set cpoptions+=$                      " Add $ sign to visualize what i'm changing

set visualbell                        " Prevent 'sound': no beeping.
set tabstop=2
set expandtab                         " Use spaces, not tabs
set shiftwidth=2
set softtabstop=2                     " Using 2 spaces when hitting 'tab' in INSERT mode
set hlsearch                          " Hightlight searchhits
set incsearch                         " Searchs are incremental
set smartcase                         " ...unless they contain at least one capital letter

set number                            " Enables line numbers

set ignorecase                        " Searches are case insensitive...
set autoindent                        " Automatically indent
set smartindent                       " Do smart indenting

set backspace=indent,eol,start        " backspace through everything in insert mode
set linespace=6

set autoread                          " Autoread changed files

set foldenable

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

" Add basic Json syntax highlighting (without using plugins)
autocmd BufNewFile,BufRead *.json set ft=javascript

" ###
" Plugin bindings
" ###

" CTRL-P
map <Leader>b :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = {
 \ 'file': '\v[\/]\.(git|hg|svn)$',
 \ 'dir': 'target\|_site\|doc\',
 \ }
" disable caching
let g:ctrlp_use_caching=0

" Powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
set laststatus=2                      " always display powerline in all windows
set noshowmode                        " hide default text mode text (e.g. -- INSERT -- below the statusline

" Delimitmate settings
let delimitMate_expand_cr = 1         " add an extra line after expanding my opening quote

" TagBar settings
:nmap <C-t>  :TagbarToggle<CR>

" Ack settings
nnoremap <leader>a :Ack<space>

" Buffets bindings
:nmap <S-b> :Bufferlist<CR>

" NERDTree
let NERDTreeWinSize=50              " NERDTree window size
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_synchronize_view=1
map <C-n> :NERDTreeToggle<CR> 
map <C-f> :NERDTreeFind<CR>

if has ("autocmd") 
  autocmd BufNewFile,BufRead *.markdown,*.mdown,*.md set filetype=markdown
endif

" Key for toggling search highlighting.
:noremap <F3> :set hlsearch! hlsearch?<CR>

set tags=~/.tags
