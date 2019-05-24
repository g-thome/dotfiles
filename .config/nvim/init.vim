"auto install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  if !executable("curl")
    echoerr "couldn't install vim-plug: curl not found"
    execute "q!"
  endif
  echo "installing vim-plug"
  echo ""
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"install plugins
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
  
  "latex live preview
  Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 
  
  "sublime text multiple cursor feature
  Plug 'terryma/vim-multiple-cursors'

  "misc (vim-notes dependency)
  Plug 'xolox/vim-misc'

  "latex integration
  Plug 'lervag/vimtex'

call plug#end()

"unicode
set encoding=utf-8

" ` character acessible through ,
let g:mapleader=','

" copy to system clipboard
vnoremap <C-c> "+y

"syntax highlighting
syntax on

"line numbers
set relativenumber number

"system clipboard as yank clipboard
set clipboard+=unnamedplus

"reload externally modified files
set autoread

"tabs
set tabstop=2
set shiftwidth=2
set expandtab

"backup files
set nobackup
set nowritebackup

" save file on <c-s>
noremap <silent> <C-S>    :update<CR>
vnoremap <silent> <C-S>   <C-C>:update<CR>
inoremap <silent> <C-S>   <C-O>:update<CR>

"persistent undo
if !isdirectory($HOME."/.config/nvim/undo-dir")
  call mkdir($HOME."/.config/nvim/undo-dir", "", 0700)
endif

set undodir=~/.config/nvim/undo-dir
set undofile

"denite configs
nmap ; :Denite buffer -split=floating -winrow=1<CR>
nmap <leader>t :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

"coc
"completion on <c-space>
inoremap <silent><expr> <c-space> coc#refresh()

"show documentation on K
function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

"tab to navigate
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] = ~# '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
