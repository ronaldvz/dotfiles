set nocompatible
filetype on
                                
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages the plugins 
Bundle 'gmarik/vundle'

" Provides 'open resource' functionality
Bundle 'kien/ctrlp.vim'

" Provides easy commenting
Bundle 'scrooloose/nerdcommenter'

" Provides git features in vim
Bundle 'tpope/vim-fugitive'
" Bundle 'tpope/vim-surround' (disabled as delimitMate works fine)

" Provides markdown support
Bundle 'tpope/vim-markdown'

" Provides git status in gutter
Bundle 'airblade/vim-gitgutter'

" Changes to working directory to the directory of the opened file
Bundle 'airblade/vim-rooter'

" Provides nice looking bottom bar
"" Bundle 'Lokaltog/powerline'

" Provides tagbar on rightside
Bundle 'majutsushi/tagbar'

" Provides filebrowser on leftside
Bundle 'scrooloose/nerdtree'

" Provides syntax highlighting
"Bundle 'scrooloose/syntastic'

" Provides delimiters for brackets/parentheses and such
Bundle 'Raimondi/delimitMate'

" Provides filesearch within current directory (ack needs to be installed)
Bundle 'mileszs/ack.vim'

" Provides nice overview of open buffers 
Bundle 'sandeepcr529/Buffet.vim'

" Provides code-snippets
" Bundle 'msanders/snipmate.vim'

" Provides css coloring, awesome
Bundle 'ap/vim-css-color'

" Also provides code-snippets
Bundle 'drmingdrmer/xptemplate'

" Taskwarrior
" Bundle "farseer90718/vim-taskwarrior"

" Color schemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'cschlueter/vim-mustang'
Bundle 'sjl/badwolf'
Bundle 'whatyouhide/vim-gotham'
Bundle 'morhetz/gruvbox'
Bundle 'zeis/vim-kolor'
Bundle 'tomasr/molokai'
Bundle 'jpo/vim-railscasts-theme'

call vundle#end()
filetype plugin indent on             " required for Vundle to work

" Enable syntax highlighting
syntax on
set background=dark
set t_Co=256
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
colorscheme railscasts

set clipboard=unnamed

" Add $ sign to visualize what i'm changing (when using 'c'). Thanks to Derek
" Wyatt's video on Vimeo. Awesome feature!
set cpoptions+=$                      

" Prevent 'sound': no beeping (virtualbell)
set vb 

" Nr of spaces when hitting 'tab'
set tabstop=2
set shiftwidth=2
" Nr of spaces used when hitting 'tab' in INSERT mode
set softtabstop=2

" Use spaces, not tabs
set expandtab                         

" Highlight searchhits
set hlsearch                          

" Searchs are incremental
set incsearch                         

" Searches are case insensitive...
set ignorecase                        

" ...unless they contain at least one capital letter
set smartcase                         

" Enables line numbers
set number                            

" Automatically indent
set autoindent                        

" Do smart indenting
set smartindent

" backspace through everything in insert mode
set backspace=indent,eol,start        
set linespace=6

" Autoread changed files
set autoread                          

" Setting backup dirs and disabling swapping
set backupdir=~/.vim/backup//         " where to put backup files.
set directory=~/.vim/tmp//            " where to put swap files.
set nobackup                          " disable backups
set noswapfile                        " disable swap files

" Hide the mouse pointer while typing(!)
set mousehide

" --------------------------------- 
" ---------- Keybindings ----------
" --------------------------------- 
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
:noremap ,h :set hlsearch! hlsearch?<CR>

" ###
" Plugin specific bindings
" ###

" CTRL-P
"map <Leader>b :CtrlPBuffer<cr>
map <Shift><Shift> :CtrlPBuffer<cr>

" Let CTRL-P ignore git / svn files and target dirs
let g:ctrlp_custom_ignore = {
 \ 'file': '\v[\/]\.(git|hg|svn)$',
 \ 'dir': 'target\|_site\|doc\',
 \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" disable CTRL-P caching
let g:ctrlp_use_caching=0

" Powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set encoding=utf-8
let g:Powerline_symbols = 'fancy'
" always display powerline in all windows
set laststatus=2
" hide default text mode text (e.g. -- INSERT -- below the statusline
set noshowmode

" vim-fugitive
nmap ,gs :Gstatus<CR>
nmap ,gw :Gwrite<CR>
nmap ,gr :Gread<CR>
nmap ,gd :Gdiff<CR>
nmap ,gc :Gcommit<CR>

" Delimitmate setting: add an extra line after expanding my opening quote
let delimitMate_expand_cr = 1         

" TagBar settings
:nmap <C-t>  :TagbarToggle<CR>

" Ack settings
:nmap ,f :Ack<space>

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

" abbrevations: replaces mistypes in insert mode
iab Seperate Separate
iab seperate separate
