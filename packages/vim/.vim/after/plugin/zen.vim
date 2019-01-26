" Distraction free

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

function! s:goyo_enter()
  if exists('$TMUX')
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  Limelight
endfunction

function! s:goyo_leave()
  if exists('$TMUX')
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

nnoremap <Leader>= :Goyo<CR>
