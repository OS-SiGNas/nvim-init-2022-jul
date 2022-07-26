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
Plug 'pangloss/vim-javascript'			" JavaScript es6
Plug 'leafgarland/typescript-vim' 		" TypeScript syntax
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'yuezk/vim-js'					" JavaScript
"Plug 'jelera/vim-javascript-syntax'	" JavaScript
"Plug 'maxmellon/vim-jsx-pretty'   		" JS and JSX syntax

"Autocomplete
Plug 'alvan/vim-closetag'				" Autoclose tag for <tag></tag>
Plug 'neoclide/coc.nvim', {'branch': 'release'}
""Plug 'phpcomplete-extended'
""Plug 'm2mdas/phpcomplete-extended-laravel'

call plug#end()

"Plug Config
"
let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239 

let g:javascript_plugin_jsdoc = 1

let g:prettier#autoformat = 1

" coc config
"   Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"   Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implemenntation)
nmap <silent> gr <Plug>(coc-references)

" Faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" run current file
nnoremap <leader>x :!node %<cr>
