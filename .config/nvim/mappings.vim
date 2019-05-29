" ` character acessible through ,
let g:mapleader=','

" copy to system clipboard
vnoremap <C-c> "+y

" save file on <c-s>
noremap <silent> <C-S>    :update<CR>
vnoremap <silent> <C-S>   <C-C>:update<CR>
inoremap <silent> <C-S>   <C-O>:update<CR>

" navigate splits smoothly
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
