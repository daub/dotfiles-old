" true color
" set termguicolors

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
