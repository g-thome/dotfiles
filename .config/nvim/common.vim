" python
let g:python_host_prog = '~/.pyenv/versions/nvim_2/bin/python'
let g:python3_host_prog = expand('~/.pyenv/versions/nvim_3/bin/python')

"node
let g:node_host_prog = '~/.nodenv/versions/10.1.0/lib/node_modules/neovim/bin/cli.js'

" text encoding
set encoding=utf-8

" syntax highlighting
syntax on

" line numbers
set relativenumber number

" system clipboard as yank clipboard
set clipboard+=unnamedplus

" reload externally modified files
set autoread

" tabs
set tabstop=2
set shiftwidth=2
set expandtab

" backup files
set nobackup
set nowritebackup

" persistent undo
if !isdirectory($HOME."/.config/nvim/undo-dir")
  call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
endif

set undodir=~/.config/nvim/undo-dir
set undofile

" highlight current line number
highlight CursorLineNR cterm=bold

" bold visual selection
highlight Visual cterm=bold
