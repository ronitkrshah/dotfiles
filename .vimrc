" Disable vi features
set nocompatible

" Number
set number
set relativenumber

" Cursor
set cursorline

" Syntax & Indent
set shiftwidth=4
set tabstop=4
set expandtab
syntax on
filetype on
filetype plugin on
filetype indent on

" Backup
set nobackup
set nowritebackup

" Wrap
set nowrap

" Search
set incsearch
set ignorecase
set smartcase
set hlsearch

" Theme
set termguicolors
set background=dark

" Fold
set foldmethod=indent
set foldenable
set foldlevel=99
set foldlevelstart=99

" Misc
set scrolloff=10
set history=1000
set updatetime=300
set signcolumn=yes
set encoding=utf-8

" Setup Vim Plug If Not Installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


source $HOME/.vim/keymaps.vim
source $HOME/.vim/plugins.vim
source $HOME/.vim/plugins/coc.vim
source $HOME/.vim/plugins/fuzzbox.vim
source $HOME/.vim/plugins/nerdtree.vim
source $HOME/.vim/plugins/floatterm.vim
