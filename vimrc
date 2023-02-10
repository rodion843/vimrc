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

" clang-format plugin
Plugin 'https://github.com/rhysd/vim-clang-format'

" comment stuf
Plugin 'https://github.com/tpope/vim-commentary'


Plugin 'https://github.com/ycm-core/YouCompleteMe.git'

Plugin 'https://github.com/sedan07/vim-mib.git'

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
\ set expandtab |
\ set cindent
syntax on

set tags=tags;~/git/SAW/
"set lcs+=space:·
set listchars=tab:>-,trail:·,extends:>,precedes:<
set mouse=a
set is hlsearch
set noequalalways

set number
set relativenumber
set signcolumn=number

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
let g:ycm_enable_semantic_highlighting = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_clangd_args = ['--clang-tidy']
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_global_ycm_extra_conf = "/home/rodion/git/.ycm_extra_conf.py"

set completeopt-=preview

if !has('nvim')
  let g:CommandTPreferredImplementation='ruby'
  let g:coc_start_at_startup = v:false
else
  let g:loaded_youcompleteme = 1
  let g:CommandTPreferredImplementation='lua'
endif


nnoremap <c-z> <nop>


" hack to make tmux behave like a human when you do ctrl+arrow keys
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif


"augroup highlight_current_word
"  au!
"  au CursorHold * :exec 'match Search /\V\<' . expand('<cword>') . '\>/'
"  set updatetime=100
"augroup END
