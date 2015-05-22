set nocompatible
" required for Vundle to work
filetype off                          
                                
set rtp+=~/.vim/bundle/vundle
call vundle#begin()

Bundle 'gmarik/vundle'

" Provides 'open resource' functionality
Bundle 'kien/ctrlp.vim'

" Provides git features in vim
Bundle 'tpope/vim-fugitive'

Bundle 'tpope/vim-surround'

" Provides markdown support
Bundle 'tpope/vim-markdown'

" provides git status in gutter
Bundle 'airblade/vim-gitgutter'
Bundle 'airblade/vim-rooter'

" Provides nice looking bottom bar
Bundle 'Lokaltog/powerline'

" Provides tagbar on rightside
Bundle 'majutsushi/tagbar'

" Provides filebrowser on leftside
Bundle 'scrooloose/nerdtree'

" Provides syntax highlighting
"Bundle 'scrooloose/syntastic'

Bundle 'Raimondi/delimitMate'

" Provides filesearch within current directory (ack needs to be installed)
Bundle 'mileszs/ack.vim'

" Provides nice overview of open buffers 
Bundle 'sandeepcr529/Buffet.vim'

" Provides code-snippets
Bundle 'msanders/snipmate.vim'

" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'cschlueter/vim-mustang'
Bundle 'sjl/badwolf'
Bundle 'whatyouhide/vim-gotham'
Bundle 'morhetz/gruvbox'
Bundle 'zeis/vim-kolor'
Bundle 'tomasr/molokai'

call vundle#end()
filetype plugin indent on             " required for Vundle to work

" Enable syntax highlighting
syntax on
set background=dark
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme molokai

set clipboard=unnamed

" Add $ sign to visualize what i'm changing (when using 'c')
set cpoptions+=$                      

" Prevent 'sound': no beeping.
set visualbell                        

set tabstop=2

" Use spaces, not tabs
set expandtab                         

set shiftwidth=2

" Using 2 spaces when hitting 'tab' in INSERT mode
set softtabstop=2                     

" Hightlight searchhits
set hlsearch                          

" Searchs are incremental
set incsearch                         

" ...unless they contain at least one capital letter
set smartcase                         

" Enables line numbers
set number                            

" Searches are case insensitive...
set ignorecase                        

" Automatically indent
set autoindent                        

" Do smart indenting
set smartindent

" backspace through everything in insert mode
set backspace=indent,eol,start        
set linespace=6

" Autoread changed files
set autoread                          

" Keybindings for easy buffer and tab-navigation

" Setting backup dirs and disabling swapping
set backupdir=~/.vim/backup//         " where to put backup files.
set directory=~/.vim/tmp//            " where to put swap files.
set nobackup                          " disable backups
set noswapfile                        " disable swap files

" Keybindings
" Ctrl-N to enable / disable line numbers
:nnoremap <C-N><C-N> :set invnumber<CR>

" Ctrl-W to enable / disable line wrapping
":nnoremap <C-w><C-w> :set invwrap<CR>

" Ctrl-P twice for enabling pasting, without vim doing reformatting and stuff
:nnoremap <C-p><C-p> :set invpaste<CR>

" Edit vimrc file
:nmap <silent> ,ev :e $MYVIMRC<CR>
:nmap <silent> ,sv :so $MYVIMRC<CR>

" Delete current buffer
nmap <silent> ,bd :bd<CR>

" Open next buffer
nmap <silent> ,. :bnext<CR>

" Open previous buffer
nmap <silent> ,m :bprev<CR>

" Go to next tab
nmap <silent> ;' :tabnext<CR> 

" Go to previous tab
nmap <silent> ;l :tabprev<CR> 

" Key for toggling search highlighting.
:noremap ,s :set hlsearch! hlsearch?<CR>

" ###
" Plugin specific bindings
" ###

" CTRL-P
map <Leader>b :CtrlPBuffer<cr>

" Let CTRL-P ignore git / svn files and target dirs
let g:ctrlp_custom_ignore = {
 \ 'file': '\v[\/]\.(git|hg|svn)$',
 \ 'dir': 'target\|_site\|doc\',
 \ }

" disable CTRL-P caching
let g:ctrlp_use_caching=0

" Powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
set laststatus=2                      " always display powerline in all windows
set noshowmode                        " hide default text mode text (e.g. -- INSERT -- below the statusline

" Delimitmate setting: add an extra line after expanding my opening quote
let delimitMate_expand_cr = 1         

" TagBar settings
:nmap <C-t>  :TagbarToggle<CR>

" Ack settings
:nmap <Leader-s> :Ack<space>

" Buffets bindings
:nmap <S-b> :Bufferlist<CR>

" NERDTree
let NERDTreeWinSize=50
let g:nerdtree_tabs_open_on_gui_startup=0
let g:nerdtree_tabs_open_on_console_startup=0
let g:nerdtree_tabs_autoclose=1
let g:nerdtree_tabs_synchronize_view=1

" Open NERDTree
map <C-n> :NERDTreeToggle<CR> 

" Find the currently open file in NERDTree
map <C-f> :NERDTreeFind<CR>

" Set filetype to markdown on markdown files
if has ("autocmd") 
  autocmd BufNewFile,BufRead *.markdown,*.mdown,*.md set filetype=markdown
endif

set tags=~/.tags
