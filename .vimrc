set shell=/bin/zsh

set encoding=utf-8

syntax on
set t_Co=256

set exrc
set secure

set comments=sl:/*,mb:\ *,elx:\ */

"Indentation
set autoindent
set smartindent
filetype indent on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set completeopt=menu,menuone,preview

"Search
set hlsearch
set ignorecase
set incsearch
set smartcase

"UI
set laststatus=2
set ruler
set wildmenu
set tabpagemax=50
colorscheme monokai
set cursorline
set number
set relativenumber
set noerrorbells
set visualbell
set mouse=a
set title
set background=dark
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray

"Misc.
set autoread
set backspace=indent,eol,start
set confirm
set dir=~/.cache/vim
set formatoptions+=j
set hidden
set history=1000
set nomodeline
set noswapfile
set nrformats-=octal
set spell
