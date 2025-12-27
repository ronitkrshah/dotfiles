
let mapleader = " "
let maplocalleader = " "

" Quick Escape
inoremap jk <Esc>

" Buffer Navigation
execute "set <M-.>=\e."
nnoremap <M-.> :bnext<CR>

execute "set <M-,>=\e,"
nnoremap <M-,> :bprevious<CR>

execute "set <M-x>=\ex"
nnoremap <M-x> :bdelete<CR>

" Pane Navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

" Make resizing easier (leader + arrow keys)
nnoremap <leader><Up>    :resize +5<CR>
nnoremap <leader><Down>  :resize -5<CR>
nnoremap <leader><Left>  :vertical resize -5<CR>
nnoremap <leader><Right> :vertical resize +5<CR>


" Keep selection when indenting in visual mode
vnoremap < <gv
vnoremap > >gv

" Move selected lines down/up in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
