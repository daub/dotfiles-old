if !exists("g:repl_pure_exec")
  let g:repl_pure_exec = 'pulp repl'
endif

function _VimuxReplEnsureRunner ()
  let s:runnerIndex = exists("g:VimuxRunnerIndex") && g:VimuxRunnerIndex
  let s:lastCommand = exists("g:VimuxLastCummand") && g:VimuxLastCummand

  if !s:runnerIndex || _VimuxHasRunner(s:runnerIndex) == -1
    if !s:lastCommand || match(s:lastCommand, g:repl_pure_exec) == -1
      call VimuxRunCommand(g:repl_pure_exec)
    endif
  endif
endfunction

function VimuxReplPure()
  call _VimuxReplEnsureRunner()

  let lines = split(@v, "\n")

  if len(lines) == 1
    call VimuxSendText(@v)
    call VimuxSendKeys("Enter")
  elseif len(lines) > 1
    call VimuxSendText(":paste")
    call VimuxSendKeys("Enter")
    call VimuxSendText(@v)
    call VimuxSendKeys("C-d")
  endif

endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vnoremap <leader><CR> "vy :call VimuxReplPure()<CR>

" Select current paragraph and send it to tmux
nnoremap <Leader><CR> "vyy :call VimuxReplPure()<CR>
