" python
let g:python_host_prog = '~/.pyenv/versions/nvim_2/bin/python'
let g:python3_host_prog = '~/.pyenv/versions/nvim_3/bin/python'

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

augroup autoindent
  au!
  autocmd BufWritePre * :normal migg=G`i
augroup End
