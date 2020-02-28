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
