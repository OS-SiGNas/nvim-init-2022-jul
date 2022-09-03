call plug#begin('~/.config/nvim/plugged')

"IDE
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'kkvh/vim-docker-tools'

"themes
Plug 'joshdick/onedark.vim'
Plug 'jacoborus/tender.vim'
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf'
Plug 'flazz/vim-colorschemes'
Plug 'gosukiwi/vim-atom-dark'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline-themes'	"airline

"Compatibilidad multiples lenguajes
Plug 'vim-python/python-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'nvie/vim-flake8'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

"---> JavaScript
Plug 'pangloss/vim-javascript'			    " JavaScript es6
Plug 'maxmellon/vim-jsx-pretty'   		  " JS and JSX syntax
Plug 'leafgarland/typescript-vim' 		" TypeScript syntax
Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'yuezk/vim-js'					          " JavaScript
"Plug 'jelera/vim-javascript-syntax'    " JavaScript

"Autocomplete
Plug 'alvan/vim-closetag'				" Autoclose tag for <tag></tag>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
""Plug 'phpcomplete-extended'
""Plug 'm2mdas/phpcomplete-extended-laravel'

call plug#end()

"Plug Config
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239 
let g:indentLine_color_gui = '#636363'
let g:javascript_plugin_jsdoc = 1
let g:prettier#autoformat = 1

" -------------------------- coc_config
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction

" Coc
"This expression seems to be responsible for coc formatting on enter
inoremap <silent><expr> <cr> "\C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"I this just says autocomplete with the first option if pop up menu is open.
"If it is not open, just do a regular tab.
inoremap <silent><expr> <TAB> pumvisible() ? coc#select_confirm() : "\<C-g>u\<TAB>"

"   Coc Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

"   Coc Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implemenntation)
nmap <silent> gr <Plug>(coc-references)

" Faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" run current file
nnoremap <leader>x :!node %<cr>
