source ~/.vim/base.vim
source ~/.vim/plugins.vim
source ~/.vim/ui.vim
source ~/.vim/keybindings.vim
source ~/.vim/plugins-config.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
