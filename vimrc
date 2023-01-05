set nocompatible
filetype off

let g:javascript_plugin_jsdoc = 1
"set guifont=Literation\ Mono\ Powerline\ 10
set guifont=Sourme\ Code\ Pro\ for\ Powerline\ 10
"set guifont=Font\ Awesome\ 6\ Free\ 10

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle manages the plugins
Plugin 'gmarik/vundle'

" Provides 'open resource' functionality
Plugin 'kien/ctrlp.vim'

" Provides easy commenting
Plugin 'scrooloose/nerdcommenter'

" Provides git features in vim
Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-surround' (disabled as delimitMate works fine)

" Provides markdown support
Plugin 'tpope/vim-markdown'

" Show pretty bar in bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Provides git status in gutter
Plugin 'airblade/vim-gitgutter'

" Changes to working directory to the directory of the opened file
Plugin 'airblade/vim-rooter'

" Provides tagbar on rightside
Plugin 'majutsushi/tagbar'

" Provides filebrowser on leftside
Plugin 'scrooloose/nerdtree'

" Provides syntax highlighting
Plugin 'scrooloose/syntastic'

" Provides delimiters for brackets/parentheses and such
Plugin 'Raimondi/delimitMate'

" Provides filesearch within current directory (ack needs to be installed)
Plugin 'mileszs/ack.vim'

" Provides nice overview of open buffers
Plugin 'sandeepcr529/Buffet.vim'

" Provides code-snippets
" Plugin 'msanders/snipmate.vim'

"Collection of snippets
Plugin 'honza/vim-snippets'

" Provides css coloring, awesome
Plugin 'ap/vim-css-color'

" Taskwarrior
" Plugin "farseer90718/vim-taskwarrior"

" Vim Angular
Plugin 'burnettk/vim-angular'

"Javascript syntax
Plugin 'pangloss/vim-javascript'

"
Plugin 'Shougo/vimproc.vim'

" Very nice typescript support addon (completion and others))
Plugin 'Quramy/tsuquyomi'

" Plugin 'Valloric/YouCompleteMe'

" Typescript stuff
Plugin 'leafgarland/typescript-vim'

"Typescript syntax
Plugin 'herringtondarkholme/yats.vim'

"Jasmine assistance
Plugin 'claco/jasmine.vim'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'cschlueter/vim-mustang'
Plugin 'sjl/badwolf'
Plugin 'whatyouhide/vim-gotham'
Plugin 'morhetz/gruvbox'
Plugin 'zeis/vim-kolor'
Plugin 'tomasr/molokai'
Plugin 'jpo/vim-railscasts-theme'

call vundle#end()
filetype plugin indent on             " required for Vundle to work

" Enable syntax highlighting
syntax on
set background=dark
set t_Co=256
let g:solarized_termtrans = 1
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"colorscheme railscasts
colorscheme gruvbox

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
let NERDTreeWinSize=30
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

"typescript settings: show errors
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:airline_theme='dark'
let g:airline_powerline_fonts = 1

" abbrevations: replaces mistypes in insert mode
iab Seperate Separate
iab seperate separate

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
