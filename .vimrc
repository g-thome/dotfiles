"syntax highlighting
syntax on

"line numbers
set relativenumber number

"tabs
set tabstop=2
set shiftwidth=2
set expandtab


"plugins
call plug#begin('~/.vim/plugged')

"javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json', { 'for': 'json'}

"html
Plug 'mattn/emmet-vim', { 'for': 'html' }

"go
Plug 'fatih/vim-go'

"css
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'

"misc
Plug 'mboughaba/i3config.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'

call plug#end()
