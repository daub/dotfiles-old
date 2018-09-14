" Settings
let g:ledger_default_commodity = 'AMD'
let g:ledger_commodity_before = 1
let g:ledger_commodity_sep = ' '

inoremap <silent> <buffer> <Tab> <C-r>=ledger#autocomplete_and_align()<CR>
vnoremap <silent> <buffer> <Tab> :call ledger#align_commodity()<CR>
