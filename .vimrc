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
Plug 'posva/vim-vue'
Plug 'flrnprz/plastic.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ----------- Key bindings ------------

" Nerd Tree opening
map <C-n> :NERDTreeToggle<CR>

" ----------- Misc configs ------------

" Airline Theme
let g:airline_theme='deus'

" Ignore things on ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\v\.(exe|so|dll|meta|.DS_Store)$',
  \ }

" Enable hybrid numbers
set number relativenumber

" Space tabs of 2
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" Background
set background=dark

" Syntax
syntax on

" Colorscheme
" colorscheme delek
colorscheme plastic

" Lightline
let g:lightline = { 'colorscheme': 'plastic' }

" Vue autosyntax
autocmd FileType vue syntax sync fromstart
