call plug#begin('~/.vim/plugged')

"js syntax highlighting
Plug 'pangloss/vim-javascript', {'for': 'js'}
Plug 'mxw/vim-jsx', {'for': 'js'}

"emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

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
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}

"disables search highlighting
Plug 'romainl/vim-cool'

"markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

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

""
""dependencies
"[textobj-reactprop] custom text objects
Plug 'kana/vim-textobj-user'

"colorscheme pack
Plug 'flazz/vim-colorschemes'

"[notes] 
Plug 'xolox/vim-misc'

"[language client]
Plug 'junegunn/fzf', { 'do': './install --bin' }

call plug#end()
