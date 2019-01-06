" Statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Symbols
let syntastic_error_symbol = '•'
let syntastic_style_error_symbol = '•'
let syntastic_warning_symbol = '◦'
let syntastic_style_warning_symbol = '◦'

" Options
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Linters
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'

" Theme
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
