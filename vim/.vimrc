call plug#begin()
Plug 'kovetskiy/sxhkd-vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'prettier/vim-prettier'
Plug 'junegunn/fzf.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdcommenter'
call plug#end()

"basic config
filetype plugin indent on
set termguicolors
set clipboard=unnamedplus
set signcolumn=yes
set laststatus=2
set noshowmode
set relativenumber
set number
set wildmenu
set scrolloff=8
set incsearch
set ignorecase
set splitbelow splitright

"theme
let ayucolor="dark"
colorscheme ayu

"leader
let mapleader = " "
nnoremap <leader><CR> :so ~/.vimrc<CR>

"netrw, nerdtree,fzf, quickfix-list,
nnoremap <leader>pv :Vex<Cr>
nnoremap <leader>pn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-k> :cnext<CR>
nnoremap <C-j> :cprev<CR>

"moving between buffers
nnoremap <C-^> :bnext<CR>
nnoremap <C-6> :bnrevious<CR>

"utils
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"coc; global
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-snippets',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-json', 
  \ 'coc-css',
  \ '@yaegassy/coc-tailwindcss3'
  \ ]

"coc;functions
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"coc; use tab for trigger completion
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"coc; use Return to accept selected completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"coc; goto code definition, etc.
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
"coc; rename symbol
nnoremap <F2> <Plug>(coc-rename)
"coc; show documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>
"coc; code actions popup
nnoremap <leader>ac  <Plug>(coc-codeaction)
"coc; select range
nnoremap <silent> <C-d> <Plug>(coc-range-select)
xnoremap <silent> <C-d> <Plug>(coc-range-select)

"commenter
vnoremap ++ <plug>NERDCommenterToggle
nnoremap ++ <plug>NERDCommenterToggle
