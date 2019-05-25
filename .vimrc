" vimrc

" ------------ Plug Installs ------------

"  Checks if plug is installed, otherwise the script downloads it
"  and proceed to install it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ----------- Key bindings ------------

" Nerd Tree opening
map <C-n> :NERDTreeToggle<CR>

" ----------- Misc configs ------------

" Airline Theme
let g:airline_theme='deus'

" Ignore node modules on ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Enable hybrid numbers
set number relativenumber

" Space tabs of 2
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Syntax
syntax on
