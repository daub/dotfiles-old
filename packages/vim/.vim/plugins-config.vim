"
let g:webdevicons_enable_airline_tabline = 0
let g:webdevicons_enable_airline_statusline = 1

"

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

" let g:limelight_conceal_ctermfg=8
" let g:limelight_conceal_guifg='#88C0D0'

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

nnoremap <Leader>= :Goyo<CR>

" Misc
" nnoremap <Leader>t :OnlineThesaurusCurrentWord<CR>

" Vimux
let g:VimuxUseNearest = 0

" JSDoc
let g:jsdoc_input_description = 0
let g:jsdoc_enable_es6 = 1
nmap <silent> <Leader>d <Plug>(jsdoc)

" Ledger
" au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
" au FileType ledger autocmd BufWritePre <buffer> call LedgerAlign()
let g:move_key_modifier = 'C'
