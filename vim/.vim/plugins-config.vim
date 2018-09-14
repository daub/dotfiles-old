" Airline
" let g:airline_theme='nord'
" let g:airline_section_y = airline#section#create(['mode', '', 'branch'])
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_a = ''
let g:airline_section_b = ''
let g:airline_section_y = ''
let g:airline_section_z = '%l:%c'

let g:javascript_plugin_flow      = 1
let g:javascript_conceal_function = "ƒ"
let g:javascript_conceal_null     = "ø"

let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Markdown
let g:markdown_fenced_languages = ['python', 'bash=sh', 'js=javascript', 'lua']

" Distraction free
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  Limelight
  set conceallevel=1
  set concealcursor=n
  " fix
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  Limelight!
  set conceallevel=0
  " fix
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

" Zoom
nnoremap <Leader>= :Goyo<CR>

" Misc
" nnoremap <Leader>t :OnlineThesaurusCurrentWord<CR>

" Fuzzy finder

call denite#custom#var('file_rec', 'command',
  \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
nnoremap <Leader>n :Denite -auto-resize -highlight-mode-insert=Visual file_rec<cr>
nnoremap <Leader>b :Denite -auto-resize -highlight-mode-insert=Visual buffer<cr>

" JSDoc
let g:jsdoc_input_description = 1
let g:jsdoc_enable_es6 = 1
nnoremap <silent> <Leader>d ?function<cr>:noh<cr>:JsDoc<cr>

" Ledger
" au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
" au FileType ledger autocmd BufWritePre <buffer> call LedgerAlign()
