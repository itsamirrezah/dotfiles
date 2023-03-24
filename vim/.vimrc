
call plug#begin()
Plug 'kovetskiy/sxhkd-vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
call plug#end()

filetype plugin indent on
syntax enable
set clipboard=unnamedplus
set laststatus=2
set noshowmode
set relativenumber
set wildmenu
set number
set scrolloff=8
set incsearch
set ignorecase
set splitbelow splitright
set termguicolors
let ayucolor="dark"
colorscheme ayu

let mapleader = " "
nnoremap <leader>pv :Vex<Cr>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
