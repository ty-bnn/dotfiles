" vim自体の設定
set number
set splitright
set clipboard&
set clipboard^=unnamedplus
colorscheme habamax

" 括弧の自動補完
inoremap { {}<LEFT>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" filetype毎にインデントの大きさやを指定
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType go          setlocal sw=4 sts=4 ts=4 noet
  autocmd FileType java        setlocal sw=4 sts=4 ts=4 et
endif
