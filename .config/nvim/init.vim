""""""""""""""""""""""""""""
""""""""""plugins"""""""""""
""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"javascript syntac highlighting
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

"jsx syntax highlighting
Plug 'mxw/vim-jsx'

"json syntax highlighting
Plug 'elzr/vim-json', { 'for': 'json'}

"emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

"go
Plug 'fatih/vim-go'

"colored color codes
Plug 'ap/vim-css-color'

"scss syntax highlighting
Plug 'cakebaker/scss-syntax.vim'

"css3 syntax highlighting
Plug 'hail2u/vim-css3-syntax'

"i3wm syntax highlighting
Plug 'mboughaba/i3config.vim'

"zen mode
Plug 'junegunn/goyo.vim'

"insert and remove characters around text objects
Plug 'tpope/vim-surround'

"autocompletion and language server manager
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

"auto close html and xml tags
Plug 'alvan/vim-closetag'

"navigate through files
Plug 'Shougo/denite.nvim'

"take notes
Plug 'xolox/vim-notes'

"misc (vim-notes dependency)
Plug 'xolox/vim-misc'

call plug#end()
""""""""""""""""""""""""""""
""""""""""\plugins"""""""""""
""""""""""""""""""""""""""""




"unicode
set encoding=utf-8

" ` character acessible through ,
let g:mapleader=','

" copy paste
vnoremap <C-c> "+y
map <C-p> "+p

"syntax highlighting
syntax on

"line numbers
set relativenumber number

"set system clipboard
set clipboard+=unnamedplus

"tabs
set tabstop=2
set shiftwidth=2
set expandtab

"backup files
set nobackup
set nowritebackup

" save file
noremap <silent> <C-S>    :update<CR>
vnoremap <silent> <C-S>   <C-C>:update<CR>
inoremap <silent> <C-S>   <C-O>:update<CR>

"denite configs
nmap ; :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>t :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>
