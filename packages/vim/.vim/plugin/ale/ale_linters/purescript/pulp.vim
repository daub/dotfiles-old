" Author: rjohnsondev <github@rjohnson.id.au>
" Description:

function! s:error(str)
  if exists('syntastic#log#error')
    let logger = function('syntastic#log#error')
  elseif exists('neomake#utils#ErrorMessage')
    let logger = function('neomake#utils#ErrorMessage')
  endif
  echom a:str
  if exists("logger")
    call logger(a:str)
  endif
endfunction

function! ale_linters#purescript#pulp#Handle(buffer, lines) abort
    let str = join(a:lines, " ")
    if len(str) < 20 || str !~# '{' || str !~# '}'
      return []
    endif

    let matched = matchlist(str, '{.*}')
    if len(matched) < 1
        call s:error('checker purescript/pulp: unrecognized error format 1: ' . str)
        return []
    endif

    let l:output = []

    let decoded = ale#util#FuzzyJSONDecode(matched[0], [])
    if type(decoded) == type({}) && type(decoded["warnings"]) == type([]) && type(decoded["errors"]) == type([])
        for l:error in decoded["errors"]
            call add(l:output, {
            \   'lnum': l:error["position"]["startLine"],
            \   'col': l:error["position"]["startColumn"],
            \   'end_lnum': l:error["position"]["endLine"],
            \   'end_col': l:error["position"]["endColumn"],
            \   'text': l:error["message"],
            \   'type': 'E',
            \})
        endfor
        for l:error in decoded["warnings"]
            call add(l:output, {
            \   'lnum': l:error["position"]["startLine"],
            \   'col': l:error["position"]["startColumn"],
            \   'end_lnum': l:error["position"]["endLine"],
            \   'end_col': l:error["position"]["endColumn"],
            \   'text': l:error["message"],
            \   'type': 'W',
            \})
        endfor
        return l:output
    else
        call s:error('checker purescript/pulp: unrecognized error format 4: ' . str)
        return []
    endif
endfunction

call ale#linter#Define('purescript', {
\   'name': 'pulp',
\   'executable': 'pulp',
\   'command': 'pulp build --no-psa -- --json-errors',
\   'callback': 'ale_linters#purescript#pulp#Handle',
\   'output_stream': 'stderr',
\})
