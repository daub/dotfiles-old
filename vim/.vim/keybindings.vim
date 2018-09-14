let mapleader=" "
nnoremap <SPACE> <Nop>

nnoremap ; :
nnoremap : ;

inoremap <c-k> <up>
inoremap <c-j> <down>
inoremap <c-h> <left>
inoremap <c-l> <right>

" save
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-C>:update<CR>

" buffers navigation
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>

nnoremap H :bprevious<CR>
nnoremap L :bnext<CR>

" splits
nnoremap <Leader>\ :vsp<CR>
nnoremap <Leader>- :sp<CR>

" scrollwheel
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
