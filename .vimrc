syntax on

set relativenumber number
set clipboard=unnamedplus

"tabs
set tabstop=2
set shiftwidth=2
set expandtab

"fecha encapsulação automáticamente
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"plugins
call plug#begin('~/.vim/plugged')

"javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

"jsx
Plug 'mxw/vim-jsx'

"css

"emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

call plug#end()
