set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'wincent/command-t'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" shellcheck
Plugin 'https://github.com/itspriddle/vim-shellcheck.git'



Plugin 'https://github.com/ycm-core/YouCompleteMe.git'

" highliting thingy
Plugin 'mtdl9/vim-log-highlighting'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" execute pathogen#infect()
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

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

set clipboard^=unnamed,unnamedplus

set undofile
set undodir=~/.vim/undo

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set nowrapscan

let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_max_num_candidates = 10


nnoremap <c-z> <nop>
