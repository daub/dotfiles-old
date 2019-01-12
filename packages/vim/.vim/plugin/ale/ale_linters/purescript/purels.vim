call ale#Set('purels_executable', 'purescript-language-server')
call ale#Set('purels_use_global',
\    get(g:, 'ale_use_global_executables', 0)
\)

function! ale_linters#purescript#purels#GetExecutable(buffer) abort
    return ale#node#FindExecutable(a:buffer, 'purels', [
    \   'node_modules/.bin/purescript-language-server',
    \])
endfunction

function! ale_linters#purescript#purels#GetCommand(buffer) abort
    let l:executable = ale_linters#purescript#purels#GetExecutable(a:buffer)

    return ale#Escape(l:executable) . ' --stdio --config ' . ale#Escape('{}')
endfunction

function! ale_linters#purescript#purels#FindProjectRoot(buffer) abort
    let l:pure_config = ale#path#FindNearestFile(a:buffer, 'package.json')

    if !empty(l:pure_config)
        return fnamemodify(l:pure_config, ':h')
    endif

    return ''
endfunction

call ale#linter#Define('purescript', {
\   'name': 'purels',
\   'lsp': 'stdio',
\   'executable_callback': 'ale_linters#purescript#purels#GetExecutable',
\   'command_callback': 'ale_linters#purescript#purels#GetCommand',
\   'project_root_callback': 'ale_linters#purescript#purels#FindProjectRoot',
\   'language': 'purescript',
\})
