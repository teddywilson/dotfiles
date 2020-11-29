"TODO(teddywilson) Clean up the organization of this file.

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
set formatoptions+=j
set hidden
set history=1000
set nomodeline
set nrformats-=octal
set spell

"Mappings

"Toggle Relative Number
nnoremap <silent> <leader>nb :set relativenumber!<CR>
"Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk
"Move to beginning/end of line
nnoremap B ^
nnoremap E $
"Select all text
nnoremap vA ggVG
"Quick Save
nnoremap <S-s> :w<CR>
"Yank to end of line
nnoremap Y y$
"Delete to the end of line
nnoremap D d$
"Keep search results at the center of screen
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
"Press <leader> Enter to remove search highlights
noremap <silent> <leader><cr> :noh<cr>
"Switch between tabs
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
"Easily create a new tab.
noremap <Leader>tN :tabnew<CR>
"Easily close a tab.
noremap <Leader>tc :tabclose<CR>
"Easily move a tab.
noremap <Leader>tm :tabmove<CR>
"Easily go to next tab.
noremap <Leader>tn :tabnext<CR>
"Easily go to previous tab.
noremap <Leader>tp :tabprevious<CR>
"Quickly replace all tabs with spaces
nnoremap <leader><Space> :%s/<Tab>/  /g<CR>
"Quickly source .vimrc
nnoremap <leader>r :source $MYVIMRC<CR>
"Quickly open .vimrc in new tab
nnoremap <leader>v :tabedit ~/.vimrc<CR>
"Quickly quit editting without save
nnoremap <leader>q :q!<CR>
"Saves the file (handling the permission-denied error)
cnoremap w!! w !sudo tee % >/dev/null
