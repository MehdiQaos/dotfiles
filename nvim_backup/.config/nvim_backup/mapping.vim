" leader keys
let mapleader=" "
let maplocalleader=","

inoremap jj <ESC>
inoremap jk <ESC>
inoremap JJ <ESC>

" open config file in new tab
nnoremap <leader>ev :e $MYVIMRC<CR>

" reload config file
nnoremap <leader>sv :source $MYVIMRC<CR>

" navigate between buffers
nnoremap <leader>j :bp<CR>
nnoremap <leader>k :bn<CR>
nnoremap <leader>h :bf<CR>
nnoremap <leader>l :bl<CR>

" show all buffers and let user choose one
nnoremap <leader>i :ls<CR>:b<Space>

" delete current buffer
nnoremap <leader>dd :bd<CR>

" close current buffer
nnoremap <leader>q :q<CR>

" write current buffer
nnoremap <leader>w :w<CR>

" navigate tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt

" switch between two buffers
nnoremap <leader><tab> <c-^>

" add current line to X Clipboard
nnoremap <leader>yy :normal "+yy<CR>

" add current selected text to X Clipboard
xnoremap <leader>yy :normal gv"+y<CR>

" select c function
nnoremap <leader>sk Vf{%
