set nocompatible " required by Vundle
filetype off     " required by Vundle

" Vundle runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Syntax highlighting
Plugin 'sheerun/vim-polyglot'
" Python indentation
Plugin 'Vimjas/vim-python-pep8-indent'
" Asynchronous Lint Engine
Plugin 'dense-analysis/ale'
call vundle#end()

filetype plugin indent on " required by Vundle

" Recogonize Z shell
set shell=/bin/zsh

" Output encoding to utf-8
set encoding=utf-8

" Enable syntax highlighting
syntax on

" Enforce 256 color terminal control
set t_Co=256

set exrc
set secure

set comments=sl:/*,mb:\ *,elx:\ */

""""""""""""""""""""""""""""""
"        Indentation         "
""""""""""""""""""""""""""""""
filetype indent on
" New lines inherit the indention of previous lines
set autoindent
" Reactive indentation
set smartindent
" Number of spaces a "tab" key is equivalent to
set tabstop=2
" When shifting, indent using two spaces
set shiftwidth=2
" How far cursor moves while typing a "tab" key
set softtabstop=2
" Insert "tabstop" number of spaces when the "tab" key is pressed
set smarttab
" Convert tabs to spaces
set expandtab
set completeopt=menu,menuone,preview

""""""""""""""""""""""""""""""
"           Search           "
""""""""""""""""""""""""""""""
" Enable search highlighting
set hlsearch
" Ignore case when searching
set ignorecase
" Incremental search that shows partial matches
set incsearch
" Automatically switch search to case-sensitive when search query contains an
" uppercase letter
set smartcase

""""""""""""""""""""""""""""""
"             UI             "
""""""""""""""""""""""""""""""
highlight ColorColumn ctermbg=darkgray
colorscheme monokai
" Always display the status bar
set laststatus=2
" Always show cursor position
set ruler
" Display command line's tab complete options as a menu
set wildmenu
" Max number of tab pages that can be opened from the command line
set tabpagemax=50
" Highlight active line
set cursorline
" Display line numbers
set number
" Display line numbers relative to the current line
set relativenumber
" Disable annoying error sounds
set noerrorbells
" Disable error flashing
set visualbell
" Enable text selection using mouse
set mouse=a
" Set title to current filename
set title
" Let vim know we are using a dark color scheme
set background=dark
" Display column line width guide
set colorcolumn=100
" Open new panes below by default
set splitbelow
" Open new panes to the right by default
set splitright

""""""""""""""""""""""""""""""
"           Misc.            "
""""""""""""""""""""""""""""""
" Automatically re-read files if unmodified inside Vim
set autoread
" Allow backspacing over indention, line breaks and insertion start
set backspace=indent,eol,start
" Display a confirmation dialog when closing an unsaved file
set confirm
" Delete comment characters when joining lines
set formatoptions+=j
" Hide files in the background instead of closing them
set hidden
" Increase undo limit
set history=1000
" Ignore file's mode lines; use vimrc configurations instead
set nomodeline
" Interpret octal as decimal when incrementing numbers
set nrformats-=octal
" Enable spellchecking
set spell

""""""""""""""""""""""""""""""
"        Key Mappings        "
""""""""""""""""""""""""""""""

" For now, we'll leave the key mappings separate,
" but perhaps they should be organized by domain
" like above.

" Toggle Relative Number
nnoremap <silent> <leader>nb :set relativenumber!<CR>
" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk
" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" Select all text
nnoremap vA ggVG
" Quick Save
nnoremap <S-s> :w<CR>
" Yank to end of line
nnoremap Y y$
" Delete to the end of line
nnoremap D d$
" Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
" Press <leader> Enter to remove search highlights
noremap <silent> <leader><cr> :noh<cr>
" Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
" Easily create a new tab.
noremap <Leader>tN :tabnew<CR>
" Easily close a tab.
noremap <Leader>tc :tabclose<CR>
" Easily move a tab.
noremap <Leader>tm :tabmove<CR>
" Easily go to next tab.
noremap <Leader>tn :tabnext<CR>
" Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>
" Quickly replace all tabs with spaces
nnoremap <leader><Space> :%s/<Tab>/  /g<CR>
" Quickly source .vimrc
nnoremap <leader>r :source $MYVIMRC<CR>
" Quickly open .vimrc in new tab
nnoremap <leader>v :tabedit ~/.vimrc<CR>
" Quickly quit editting without save
nnoremap <leader>q :q!<CR>
" Saves the file (handling the permission-denied error)
cnoremap w!! w !sudo tee % >/dev/null
" Easier split navigation (e.g., ctrl-j) to save two keystrokes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

