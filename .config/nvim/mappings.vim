" copy to system clipboard
vmap <C-c> "+y

" save file on <c-s>
vmap <silent> <C-S>   <C-C>:update<CR>
imap <silent> <C-S>   <C-O>:update<CR>

" save on <s>
nmap s :w<CR>

" up and down
nmap m <C-D>
nmap , <C-U>

"end of file
nmap J G

" end of line
nmap L $

" start of file
nmap K gg

" start of line
nmap H 0

" replace
nmap c ciw

" navigate splits smoothly
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" quit
nmap q :bdelete<CR>
nmap <silent> <C-Q> :q!<CR>
imap <silent> <C-Q> <C-O>:q!<CR>

"insert at the end of line in insert mode
imap <C-A> <C-O>A
