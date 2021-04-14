call plug#begin('~/.vim/plugged') 
"js syntax highlighting
Plug 'pangloss/vim-javascript', {'for': 'js'}
Plug 'mxw/vim-jsx', {'for': 'js'}

"colored color codes
Plug 'ap/vim-css-color'

"i3wm syntax highlighting
Plug 'mboughaba/i3config.vim'

"zen mode
Plug 'junegunn/goyo.vim'

"insert and remove characters around text objects
Plug 'tpope/vim-surround'

"auto close html and xml tags
Plug 'alvan/vim-closetag'

"auto pair
Plug 'jiangmiao/auto-pairs'

"take notes
Plug 'xolox/vim-notes'

"latex live preview
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' } 

"sublime text multiple cursor feature
Plug 'terryma/vim-multiple-cursors'

"latex integration
Plug 'lervag/vimtex', {'for': 'tex'}

"comment stuff out
Plug 'tpope/vim-commentary'

"react props text objects(depends on textobj-user)
Plug 'justinj/vim-textobj-reactprop', {'for': 'js'}

"handlebars
Plug 'mustache/vim-mustache-handlebars'
 
"language client
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"disables search highlighting
Plug 'romainl/vim-cool'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }

"javascript import size
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

"git
Plug 'tpope/vim-fugitive'

"status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"analytics
Plug 'wakatime/vim-wakatime'

"[unix commands]
Plug 'tpope/vim-eunuch'

" interactive popup
Plug 'liuchengxu/vim-clap'

" project structure
Plug 'preservim/nerdtree'

"editor config 
Plug 'editorconfig/editorconfig-vim'

"fuzzy search
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim', { 'do': './install --bin' }

""
""dependencies
"[textobj-reactprop] custom text objects
Plug 'kana/vim-textobj-user'

"colorscheme pack
Plug 'flazz/vim-colorschemes'

"[notes] 
Plug 'xolox/vim-misc'

call plug#end()

set ignorecase

"node
let g:node_host_prog = '~/.nodenv/versions/14.10.1/lib/node_modules/neovim/bin/cli.js'

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

"buffer navigation
nnoremap - :bp<CR>
nnoremap + :bn<CR>

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
nmap ; :NERDTreeToggle<CR>
inoremap <C-t> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"vim-go
let g:go_def_mapping_enabled = 0

"vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.hbs'

"airline
let g:airline#extensions#tabline#enabled = 1

let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:airline_theme = 'deus'

let g:airline_section_A = ''
let g:airline_section_B = ''
let g:airline_section_C = ''
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

"coc
inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> ? :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap R <Plug>(coc-rename)

" Map function and class text objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

"code action
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

"diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

"colorscheme
set t_Co=256
" colorscheme ayu

"disables automatic comment character insertion
au FileType * set fo-=c fo-=r fo-=o


" save 
nmap s :w<CR>
vmap <silent> <C-S>   <C-C>:update<CR>
imap <silent> <C-S>   <C-O>:update<CR>

" up and down
nmap m <C-D>
vmap m <C-D>
nmap , <C-U>
vmap , <C-U>

"end of file
nmap J <C-End>
vmap J <C-End>

" end of line
nmap L <End>
vmap L <End>

" start of file
nmap K <C-home>
vmap K <C-home>

" start of line
nmap H <Home>
vmap H <Home>

" navigate splits smoothly
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" quit
nmap q :bdelete<CR>
nmap Q :q!<CR>
nmap <silent> <C-Q> :q!<CR>
imap <silent> <C-Q> <C-O>:q!<CR>

"insert at the end of line in insert mode
imap <C-A> <C-O>A

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
