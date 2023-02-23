"config

set number
set relativenumber			" add line numbers
set termguicolors				" Colores hexadecimales
set encoding=UTF-8
set autoindent      " indent a new line the same amount as the line just typed
set noswapfile			" disable creating swap file
set tabstop=2       " number of columns occupied by a tab 
set shiftwidth=2    " width for autoindents
set ignorecase      " case insensitive 
set incsearch       " incremental search
set nowrap					" WrapText
set mouse=a					" enable mouse click
set ttyfast     	  " Speed up scrolling in Vim
set splitbelow			" Make horizontal splits below instead of above
set splitright			" Make vertical splits on the right
set showcmd   			" Show the current command in the bottom right
set showmatch 			" Show matching braces
set clipboard=unnamedplus 	" using system clipboard
filetype plugin indent on	" allow auto-indenting depending on file type
filetype plugin on
highlight Comment cterm=italic
syntax on					  " syntax highlighting

"Command
command! Q q
command! W w
command! Wq wq
command! X x

" Faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" run current file
nnoremap <leader>x :!node %<cr>

" Mapping HJKL
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

"IDK configs
set ruler
let mapleader = " "
nmap <silent> ,/ :noh<CR>

" Requiere
so ~/.config/nvim/import/plugins.vim
so ~/.config/nvim/import/nerdtree.vim
so ~/.config/nvim/import/themes.vim
so ~/.config/nvim/import/closetag.vim
so ~/.config/nvim/import/coc-config.vim
"so ~/.config/nvim/import/prettier.vim

