source $HOME/.config/nvim/mapping.vim

if !exists('g:vscode')
source $HOME/.config/nvim/options.vim

source $HOME/.config/nvim/vim-plug/plugins.vim

" colorschemes
set termguicolors
colorscheme base16-tomorrow-night
"colorscheme nord

" Airline config
source $HOME/.config/nvim/themes/airline.vim

" Lightline config
"source $HOME/.config/nvim/themes/lightline.vim
endif
