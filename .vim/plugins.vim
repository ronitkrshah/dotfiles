call plug#begin()

Plug 'morhetz/gruvbox'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-fuzzbox/fuzzbox.vim'
Plug 'ryanoasis/vim-devicons'

Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

" Colorscheme Settings
let g:gruvbox_italic=1

" Airline
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

" StatusLine
let g:airline#extensions#tabline#enabled = 1

silent! colorscheme gruvbox
