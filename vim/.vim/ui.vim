" true color
" set term=screen-256color
" set termguicolors

" set background=dark

colorscheme nord

hi Comment cterm=italic gui=italic
hi ColorColumn guibg=#2e3440 guifg=#bf616a ctermbg=black ctermfg=red

" syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

filetype plugin on

" line numbers
set relativenumber
set number

" split style
set splitbelow
set splitright

set title
set showcmd
set noshowmode
set laststatus=2
set ruler

" viewport
set textwidth=80
set colorcolumn=+1
set formatoptions=cq
set scrolloff=5

" invisibles
set list
set listchars=tab:ᐅ\ ,trail:·,nbsp:·

" cursor
set cursorline
set nostartofline
