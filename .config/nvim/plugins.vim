call plug#begin('~/.vim/plugged')

"js syntax highlighting
Plug 'pangloss/vim-javascript', {'for': 'js'}
Plug 'mxw/vim-jsx', {'for': 'js'}

"emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

"go
Plug 'fatih/vim-go', {'for': 'go'}

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
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

"completion engine
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"markdown previewer
Plug 'suan/vim-instant-markdown', {'for': 'md'}

"javascript import size
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

"git
Plug 'tpope/vim-fugitive'

"status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"[unix commands]
Plug 'tpope/vim-eunuch'

" interactive popup
Plug 'liuchengxu/vim-clap'

""
""dependencies
"[textobj-reactprop] custom text objects
Plug 'kana/vim-textobj-user'

"colorscheme pack
Plug 'flazz/vim-colorschemes'

"[notes] 
Plug 'xolox/vim-misc'

call plug#end()
