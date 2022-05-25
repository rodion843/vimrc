filetype off

execute pathogen#infect()
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
filetype plugin indent on

filetype plugin indent on

set tabstop=2 
set shiftwidth=2
set expandtab

autocmd FileType c,cpp
\ set tabstop=5 |
\ set shiftwidth=5 |
\ set expandtab
syntax on

set tags=tags;~/git/SAW/
set lcs+=space:·
set mouse=a
set hlsearch

set list

set ignorecase
set smartcase

set clipboard=unnamedplus

set undofile
set undodir=~/.vim/undo

nnoremap <c-z> <nop>
