set nocompatible " be improved
filetype plugin indent on " enable file detection and plugins
syntax on " enable syntax highlighting
set encoding=UTF-8 " set default encoding to utf-8
set tabstop=4 " how many space to display a tab
set shiftwidth=4 " how many space for every level of indentation
set expandtab 	" convert tab to space
set autoindent	" preserve indentation
set smartindent	" smart indentation for languages
set number 	" show line numbers
set relativenumber	" show relative line number
set mouse=a	" enable mouse support
set incsearch " enable incremental search
set hidden " navigate to another buffer without saving current buffer
set fdm=indent " set fold method to indent
set foldlevelstart=99 " fold level when open a file ( make all folds open )
set ignorecase " case insensitive search
set smartcase " case sensitive search when using uppercase characters
" set cursorline " highlights current line
" set cc=80 " display column margin (80 chars)
set nowrap
set scrolloff=8
" set signcolumn=yes "add column before numbers
set nohls
set termguicolors


" leader keys
let mapleader=" "
let maplocalleader=","

inoremap jj <ESC>
inoremap jk <ESC>
inoremap JJ <ESC>

" navigate between buffers
nnoremap <leader>j :bp<CR>
nnoremap <leader>k :bn<CR>
nnoremap <leader>h :bf<CR>
nnoremap <leader>l :bl<CR>

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

"nnoremap <Enter> :call append(line('.'), '')<CR>
"nnoremap <S-Enter> :call append(line('.')-1, '')<CR>
"nnoremap <silent> <Enter> :<C-u>put =repeat(nr2char(10),v:count)<Bar>execute "'[-1"<CR>
"nnoremap <silent> <S-Enter> :<C-u>put!=repeat(nr2char(10),v:count)<Bar>execute "']+1"<CR>
