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

"<cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "<C-g>u\<CR>"

"gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"variable renaming
nmap <leader>rn <Plug>(coc-rename)

"functions as text objects
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

"formating
command! -nargs=0 Format :call CocAction('format')

" don't give |ins-completion-menu| messages
set shortmess+=c

"FZF
"open a new file
nmap <leader>t :FZF<CR>

"show open buffers
nmap ; :Buffers<CR>

"vim-go
let g:go_def_mapping_enabled = 0

"vim-instant-markdown
let g:instant_markdown_autostart = 1

"vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.hbs'

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'monokai_subtle'
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
