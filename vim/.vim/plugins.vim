set runtimepath+=~/.vim/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent call system('mkdir -p ~/.vim/{autoload,bundle,cache,undo,backups,swaps}')
  silent call system('curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
  execute 'source  ~/.vim/autoload/plug.vim'
  augroup plugsetup
    au!
    autocmd VimEnter * PlugInstall
  augroup end
endif

let plugged_dir = $HOME . "/.vim/plugged"

call plug#begin(plugged_dir)

  Plug 'editorconfig/editorconfig-vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'jiangmiao/auto-pairs'
  Plug 'junegunn/vim-easy-align'
  Plug 'michaeljsmith/vim-indent-object'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'scrooloose/nerdcommenter'
  Plug 'ConradIrwin/vim-bracketed-paste'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Files
  Plug 'Shougo/denite.nvim'
  " Syntax
  " vim-plug
  Plug 'pangloss/vim-javascript'
  Plug 'heavenshell/vim-jsdoc'
  Plug 'posva/vim-vue'
  Plug 'tpope/vim-markdown'
  Plug 'elmcast/elm-vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'kylef/apiblueprint.vim'
  Plug 'digitaltoad/vim-pug'
  " Themes
  " Plug 'chriskempson/base16-vim'
  " Focus
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/limelight.vim'
  " Misc
  Plug 'mhinz/vim-startify'
  " Plug 'beloglazov/vim-online-thesaurus'

call plug#end()
