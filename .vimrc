" ===================================================================
" Install plugins
" ===================================================================
call plug#begin()
Plug 'preservim/NERDTree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pgavlin/pulumi.vim'
Plug 'jremmen/vim-ripgrep'
call plug#end()

" listchars:        Defines how special chars shall be translated in list mode
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" ===================================================================
" Configures tabs behaviour
" ===================================================================
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" Allow to "quit" an unsaved buffer w/o being prompted
set hidden

" Display line numbers
set number

" Activate support for 24bits colors
set termguicolors

" ===================================================================
" Change color scheme
" ===================================================================
color pulumi

set backspace=indent,eol,start

" Force UI to be displayed in English (if running on non-EN OS)
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Displays status bar
set laststatus=2

" Activate syntax highlighting
syntax on

" Change default font color
set guifont=Cascadia\ Code\ PL:h11

" Change menu for completion
set wildmenu
set wildmode=longest:full

" Change encoding
set encoding=utf-8

" ===================================================================
" Change location of temporary files
" ===================================================================
silent !mkdir ~/.vim_backup > /dev/null 2>&1
silent !mkdir ~/.vim_swp > /dev/null 2>&1
silent !mkdir ~/.vim_undo > /dev/null 2>&1

set backupdir=~/.vim_backup/
set directory=~/.vim_swp/
set undodir=~/.vim_undo/

" Display row and col number
set ruler

" ===================================================================
" Configure airline
" ===================================================================
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'

" ===================================================================
" Configure NERDTree
" ===================================================================
"let NERDTreeShowHidden=1
"autocmd VimEnter * NERDTree


