" true color
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors

" set background=dark
colorscheme frigid

" syntax highlighting
if !exists("g:syntax_on")
  syntax enable
endif

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

setlocal conceallevel=2

" cursor
set cursorline
set nostartofline
