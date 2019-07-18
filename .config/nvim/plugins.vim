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
