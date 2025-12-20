" ~/.vimrc (or ~/.config/nvim/init.vim for Neovim)

" Basic settings
set number
set relativenumber
set ignorecase
set smartcase
set incsearch
set hlsearch


" Plugin manager - vim-plug
" Install it first: 
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" File tree
Plug 'preservim/nerdtree'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Keybindings
" Ctrl+n for file tree
nnoremap <C-n> :NERDTreeToggle<CR>

" Ctrl+Space for fuzzy finder
nnoremap <C-f> :Files<CR>

" Enable system clipboard
set clipboard=unnamedplus

" Ctrl+c to copy in visual mode
vnoremap <C-c> "+y

" Optional: Close NERDTree if it's the last window
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" black and white
syntax on
colorscheme pablo

