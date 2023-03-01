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

"language client
Plug 'neovim/nvim-lspconfig'

"disables search highlighting
Plug 'romainl/vim-cool'

"javascript import size
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

"git
Plug 'tpope/vim-fugitive'

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

" color scheme
Plug 'Mofiqul/dracula.nvim'

call plug#end()

colorscheme dracula
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
set ignorecase

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
let g:closetag_filenames = '*.html,*.xhtml,*.hbs,*.svelte'

"airline
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'

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


"disables automatic comment character insertion
au FileType * set fo-=c fo-=r fo-=o

" save 
nmap s :w<CR>
vmap <silent> <C-S>   <C-C>:update<CR>
imap <silent> <C-S>   <C-O>:update<CR>

" cycle buffers
nmap - :bp<CR>
nmap + :bn<CR>

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

"object-verb order
nnoremap "d di"
nnoremap "D da"
nnoremap 'd di'
nnoremap 'D da'
nnoremap )d di)
nnoremap )D da)

nnoremap "c ci"
nnoremap "C ca"
nnoremap 'c ci'
nnoremap 'C ca'
nnoremap )c ci)
nnoremap )C ca)

set grepprg=rg 

" LSP
lua << EOF
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.sourcekit.setup{}
require'lspconfig'.tsserver.setup{}
EOF

nnoremap <silent> gd :lua vim.lsp.buf.definition()<CR>
"nnoremap <silent> gi :lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap <silent> <leader>. :lua vim.lsp.buf.code_action()<CR>
nnoremap <silent> gr :lua vim.lsp.buf.references()<CR>
nnoremap <silent> <leader>e :lua vim.diagnostic.open_float()<CR>
nnoremap <silent> <leader>f :lua vim.lsp.buf.format{async = true}<CR>
nnoremap <silent> <leader>n :lua vim.diagnostic.goto_next()<CR>
nnoremap <silent> <leader>p :lua vim.diagnostic.goto_prev()<CR>
nnoremap <silent> <leader>D :lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gD :vim.lsp.buf.declaration()<CR>
nnoremap <silent> ? :lua vim.lsp.buf.hover()<CR>
