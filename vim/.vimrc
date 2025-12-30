" ~/.vimrc (or ~/.config/nvim/init.vim for Neovim)


" Basic settings
set number
set relativenumber
set ignorecase
set smartcase
set incsearch
set hlsearch
" Indentation settings - 2 spaces
set tabstop=2           " Number of spaces a tab counts for
set shiftwidth=2        " Number of spaces for auto-indent
set softtabstop=2       " Number of spaces for <Tab> key
set expandtab           " Use spaces instead of tabs
set autoindent          " Copy indent from current line when starting new line
set smartindent         " Smart autoindenting on new lines
" black and white
syntax on
colorscheme pablo

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

" Auto completion
Plug 'jiangmiao/auto-pairs'

" Optional but recommended plugins
Plug 'vim-airline/vim-airline'           " Status line
Plug 'tpope/vim-commentary'              " Comment with gcc
Plug 'tpope/vim-surround'                " Surround text with quotes/brackets

call plug#end()

" Keybindings
" Ctrl+n for file tree
nnoremap <C-n> :NERDTreeToggle<CR>

" Ctrl+Space for fuzzy finder
nnoremap <C-f> :Files<CR>


" Ctrl+c to copy in visual mode
vnoremap <C-c> "+y

" Enable system clipboard
set clipboard=unnamedplus

" Optional: Close NERDTree if it's the last window
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"
" NERDTree settings
let NERDTreeShowHidden=1        " Show hidden files by default
let NERDTreeMinimalUI=0         " Show full UI (not minimal)
let NERDTreeDirArrows=1         " Use arrows for directories
let NERDTreeQuitOnOpen=0        " Don't close NERDTree when opening file

" NERDTree window size
let NERDTreeWinSize=35

" Ignore certain files
let NERDTreeIgnore=['\.pyc$', '\.o$', '\.class$', '__pycache__', 'node_modules']
