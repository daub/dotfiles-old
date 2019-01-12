" Symbols
let g:ale_sign_error = '•'
let g:ale_sign_warning = '◦'

" Options
" let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 1
let g:ale_completion_enabled = 1

" " Theme
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign"

" Keybindings
nnoremap <F12> :ALEDetail<CR>
nnoremap <leader>dt :ALEHover<CR>
