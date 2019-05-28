let s:config_path = $HOME.'/.config/nvim/'
let s:config_files = [
  \'common.vim',
  \'plugins.vim',
  \'plugin.conf.vim',
  \'mappings.vim'
\]

for file in s:config_files
  if filereadable(s:config_path.file)
    exec "so ".s:config_path.file
  endif
endfor

