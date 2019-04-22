"syntax highlighting
syntax on

"line numbers
set relativenumber number

"tabs
set tabstop=2
set shiftwidth=2
set expandtab

" backup files
set nobackup
set nowritebackup

" tab for coc autocompletion
inoremap <silent><expr> <TAB>
  \ pumvisible() ? \<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

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
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()
