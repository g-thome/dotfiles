"coc
"completion on <c-space>
inoremap <silent><expr> <c-space> coc#refresh()

"show documentation on K
function! s:show_documentation()
  if (index(['vim', 'help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

"tab to navigate
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"open a new file
nmap <leader>t :FZF<CR>

"show open buffers
nmap ; :Buffers<CR>

"vim-go
let g:go_def_mapping_enabled = 0

"vim-instant-markdown
let g:instant_markdown_autostart = 1

