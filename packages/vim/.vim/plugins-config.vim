" Airline
" let g:airline_theme='nord'
" let g:airline_section_y = airline#section#create(['mode', '', 'branch'])
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_a = ''
let g:airline_section_b = ''
let g:airline_section_x = ''
let g:airline_section_y = ''
let g:airline_section_z = '%l:%c'

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

let g:limelight_conceal_ctermfg=8
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

" Fuzzy finder

" Mapping selecting mappings

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

function! s:fzf_statusline()
  " Override statusline as you like
  highlight fzf1 ctermfg=161 ctermbg=251
  highlight fzf2 ctermfg=23 ctermbg=251
  highlight fzf3 ctermfg=237 ctermbg=251
  setlocal statusline=%#fzf1#\ >\ %#fzf2#fz%#fzf3#f
endfunction

autocmd! User FzfStatusLine call <SID>fzf_statusline()

nnoremap <Leader>n :Files<CR>
nnoremap <Leader>b :Buffers<CR>

" JSDoc
let g:jsdoc_input_description = 0
let g:jsdoc_enable_es6 = 1
nmap <silent> <Leader>d <Plug>(jsdoc)

" Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_sign_error = '•'
let g:ale_sign_warning = '◦'

" Ledger
" au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
" au FileType ledger autocmd BufWritePre <buffer> call LedgerAlign()
