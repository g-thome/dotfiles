" don't give |ins-completion-menu| messages
set shortmess+=c

"FZF
"open a new file
nmap <leader>t :Clap files<CR>

"show open buffers
nmap ; :Clap buffers<CR>

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

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['typescript-language-server', '--stdio'],
  \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
  \ 'sh': ['bash-language-server', 'start'],
  \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>rn :call LanguageClient#textDocument_rename()<CR>
