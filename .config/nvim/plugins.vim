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

call plug#begin('~/.vim/plugged')

"jsx syntax highlighting
Plug 'mxw/vim-jsx'

"emmet
Plug 'mattn/emmet-vim', { 'for': 'html' }

"go
Plug 'fatih/vim-go'

"colored color codes
Plug 'ap/vim-css-color'

"i3wm syntax highlighting
Plug 'mboughaba/i3config.vim'

"zen mode
Plug 'junegunn/goyo.vim'

"insert and remove characters around text objects
Plug 'tpope/vim-surround'

"autocompletion and language server manager
Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

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
Plug 'lervag/vimtex'

" fuzzy finder
Plug 'junegunn/fzf.vim'

"comment stuff out
Plug 'tpope/vim-commentary'

"react props text objects(depends on textobj-user)
Plug 'justinj/vim-textobj-reactprop'

"coc js/ts
Plug 'neoclide/coc-tsserver', {'do': 'npm install'}

"coc python
Plug 'neoclide/coc-python', {'do': 'npm install'}

"coc json
Plug 'neoclide/coc-json', {'do': 'npm install'}

"coc css
Plug 'neoclide/coc-css', {'do': 'npm install'}

"coc viml
Plug 'iamcco/coc-vimlsp', {'do': 'npm install'}

"markdown previewer
Plug 'suan/vim-instant-markdown'

"javascript import size
Plug 'yardnsm/vim-import-cost', { 'do': 'npm install' }

"git
Plug 'tpope/vim-fugitive'

""
""dependencies
"[textobj-reactprop] custom text objects
Plug 'kana/vim-textobj-user'

"[fzf.vim] fuzzy executable
Plug '/usr/local/opt/fzf'

"[notes] 
Plug 'xolox/vim-misc'
call plug#end()
