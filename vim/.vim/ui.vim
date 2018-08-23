" true color
set term=screen-256color
set termguicolors

let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

filetype plugin on

" line numbers
set relativenumber
set number

set background=dark

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

" theme

colorscheme base16-tomorrow-night

hi Comment cterm=italic gui=italic
hi ColorColumn guibg=#1d1f21 guifg=#cc6666 ctermbg=black ctermfg=red

