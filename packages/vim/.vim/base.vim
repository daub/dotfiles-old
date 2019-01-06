" use vim settings, rather than vi settings
" must be first, because it changes other options as a side effect
set nocompatible

" undo history
set history=500
set undolevels=500
set undofile
set undodir=~/.vim/undo

" backups
set nobackup
set noswapfile

set matchtime=2

" eliminate Esc delay
set timeoutlen=1000 ttimeoutlen=0

set hidden

" fuzzy find
set path+=**
" lazy file name tab completion
set wildmode=longest,list,full
set wildmenu
set wildignorecase
" ignore files vim doesnt use
set wildignore+=.git,.hg,.svn
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest,*.rbc,*.class
set wildignore+=*.ai,*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.psd,*.webp
set wildignore+=*.avi,*.divx,*.mp4,*.webm,*.mov,*.m2ts,*.mkv,*.vob,*.mpg,*.mpeg
set wildignore+=*.mp3,*.oga,*.ogg,*.wav,*.flac
set wildignore+=*.eot,*.otf,*.ttf,*.woff
set wildignore+=*.doc,*.pdf,*.cbr,*.cbz
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz,*.kgb
set wildignore+=*.swp,.lock,.DS_Store,._*

set backspace=indent,eol,start

" case insensitive search
set ignorecase
set smartcase
set infercase
set incsearch
set hlsearch

set autoindent
set complete-=i
set smarttab

set softtabstop=2
set shiftwidth=2
set expandtab

" folding.
set foldmethod=manual

" completion
set completeopt+=longest

filetype indent on
