call plug#begin('$HOME/.config/nvim/plugged')

"js syntax highlighting
Plug 'pangloss/vim-javascript', {'for': 'js'}
Plug 'mxw/vim-jsx', {'for': 'js'}

"emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

"colored color codes
Plug 'ap/vim-css-color'

"zen mode
Plug 'junegunn/goyo.vim'

"insert and remove characters around text objects
Plug 'tpope/vim-surround'

"auto close html and xml tags
Plug 'alvan/vim-closetag'

"auto pair
Plug 'jiangmiao/auto-pairs'

"latex live preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 

"sublime text multiple cursor feature
Plug 'terryma/vim-multiple-cursors'

"commentstuff out
Plug 'tpope/vim-commentary'

"lsp 
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"disables search highlighting
Plug 'romainl/vim-cool'

"javascript import size
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

"git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rbong/vim-flog'

"status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"analytics
Plug 'wakatime/vim-wakatime'

"css sytnax highlighting
Plug 'hail2u/vim-css3-syntax'

"[unix commands]
Plug 'tpope/vim-eunuch'

" project structure
Plug 'preservim/nerdtree'

" svelte syntax highlighting
Plug 'evanleck/vim-svelte'

"fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" color schemes
Plug 'Mofiqul/dracula.nvim'
Plug 'sainnhe/edge'
Plug 'chriskempson/tomorrow-theme'

" visualize undo tree
Plug 'mbbill/undotree'

" start screen
Plug 'mhinz/vim-startify'

" focus mode
Plug 'chrisbra/NrrwRgn'

" smooth scrolling
Plug 'psliwka/vim-smoothie'

" DB client
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" auto save
Plug 'Pocco81/auto-save.nvim'

call plug#end()

colorscheme Tomorrow
hi Normal guibg=NONE ctermbg=NONE

" python
let g:python_host_prog = '~/.pyenv/versions/nvim_2/bin/python'
let g:python3_host_prog = expand('~/.pyenv/versions/nvim_3/bin/python')

"node
let g:node_host_prog = '~/.nvm/versions/v14.17.6/lib/node_modules/neovim/bin/cli.js'

" text encoding
set encoding=utf-8

" syntax highlighting
syntax on

"colorscheme
set termguicolors

" line numbers
set relativenumber number

" system clipboard as yank clipboard
set clipboard+=unnamedplus

" reload externally modified files
set autoread

" search case insensitive by default
set ignorecase smartcase

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

" don't give |ins-completion-menu| messages
set shortmess+=c

" NERDTree
nmap <silent> ; :NERDTreeToggle<CR>
inoremap <silent> <C-t> :NERDTreeToggle<CR>

"vim-go
let g:go_def_mapping_enabled = 0

"vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.hbs,*.svelte,*tsx'

let g:db_ui_env_variable_url = 'mysql://root:root@localhost:3306/gvng_staging'

"airline
let g:airline_theme = 'tomorrow'
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_section_a = airline#section#create(['mode'])
let g:airline_section_b = ''
let g:airline_section_c = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = ''

let g:airline_mode_map = {
\ '__' : '-',
\ 'n'  : 'N',
\ 'i'  : 'I',
\ 'R'  : 'R',
\ 'c'  : 'C',
\ 'v'  : 'V',
\ 'V'  : 'V',
\ '^V' : 'V',
\ 's'  : 'S',
\ 'S'  : 'S',
\ '^S' : 'S',
\ }

 let g:airline_filetype_overrides = {
      \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', 'NERD'), '' ],
      \ 'startify': [ 'startify', '' ],
      \ 'vim-plug': [ 'Plugins', '' ],
      \ }


"disables automatic comment character insertion
au FileType * set fo-=c fo-=r fo-=o

" window commands
nnoremap s <C-w>

" cycle buffers
nmap - :bp<CR>
nmap = :bn<CR>

" up and down
nmap m <C-D>
vmap m <C-D>
nmap , <C-U>
vmap , <C-U>

"end of file
nmap J G
vmap J G

" end of line
nmap L $
vmap L $

" start of file
nmap K gg
vmap K gg

" start of line
nmap H 0
vmap H 0

" navigate splits smoothly
nnoremap <C-J>   <C-W><C-J>
nnoremap <C-K>   <C-W><C-K>
nnoremap <C-L>   <C-W><C-L>
nnoremap <C-H>   <C-W><C-H>
nnoremap <Down>  <C-W><C-J>
nnoremap <Up>    <C-W><C-K>
nnoremap <Right> <C-W><C-L>
nnoremap <Left>  <C-W><C-H>

" quit
nmap q :bdelete<CR>
nmap Q :q!<CR>
nmap <silent> <C-Q> :q!<CR>
imap <silent> <C-Q> <C-O>:q!<CR>

"insert at the end of line in insert mode
imap <C-A> <C-O>A

" move lines holding alt on mac
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

set grepprg=rg 

" vim gutter delay
set updatetime=100

let g:gitgutter_max_signs=-1

" LSP
let g:LanguageClient_serverCommands = {
    \ 'typescript': ['typescript-language-server', '--stdio'],
    \ 'typescriptreact': ['typescript-language-server', '--stdio'],
    \ 'rust': ['rust-analyzer']
    \ }

let g:LanguageClient_useVirtualText = "No"

set completefunc=LanguageClient#complete

nnoremap <silent> <F2> <Plug>(lcn-rename)
inoremap <silent> <F2> <Plug>(lcn-rename)
nnoremap <silent> ? <Plug>(lcn-hover)
nnoremap <silent> [d <Plug>(lcn-diagnostics-prev)
nnoremap <silent> ]d <Plug>(lcn-diagnostics-next)
nnoremap <silent> <leader>f <Plug>(lcn-format)
nnoremap <silent> <leader>e <Plug>(lcn-explain-error)
nnoremap <silent> <leader>. <Plug>(lcn-code-action)
nnoremap <silent> gd <Plug>(lcn-definition)
nnoremap <silent> gt <Plug>(lcn-type-definition)
nnoremap <silent> gr <Plug>(lcn-references)
