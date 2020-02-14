" don't give |ins-completion-menu| messages
set shortmess+=c

"clap
"open a new file
nmap <leader>t :Clap files<CR>

"show open buffers
nmap ; :Clap buffers<CR>

"color scheme
let g:clap_theme = 'material_design_dark'

"vim-go
let g:go_def_mapping_enabled = 0

"vim-closetag
let g:closetag_filenames = '*.html,*.xhtml,*.hbs'

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'deus'
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

"languageClient
let g:LanguageClient_serverCommands = {
  \ 'javascript': ['typescript-language-server', '--stdio'],
  \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
  \ 'sh': ['bash-language-server', 'start'],
  \ 'vim': ['vim-language-server', '--stdio'],
  \ 'go': ['gopls'],
  \ 'css': ['~/.nodenv/versions/10.1.0/bin/css-languageserver', '--stdio'],
  \ 'html': ['html-languageserver', '--stdio']
  \ }

nnoremap <silent> <leader>h :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <leader>rn :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent><leader>f :call LanguageClient#textDocument_formatting()<CR>
nnoremap <leader>a :call LanguageClient#textDocument_codeAction()<CR>

"deoplete
let g:deoplete#enable_at_startup = 1

call deoplete#custom#source('LanguageClient',
  \ 'min_pattern_length',
  \ 2)

inoremap <silent> <expr> <C-space> deoplete#manual_complete()

