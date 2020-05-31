# Enable vi mode
bindkey -v

# Navigation
setopt auto_cd

# Source

for aliasfile in ~/.aliases/*; do
  if [ -f "$aliasfile" ]; then
    source "$aliasfile"
  fi
done

for functionfile in ~/.functions/*; do
  if [ -f "$functionfile" ]; then
    source "$functionfile"
  fi
done

# .zshrc
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

source ~/.zsh/plugins.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# added by travis gem
[ -f /home/mushegha/.travis/travis.sh ] && source /home/mushegha/.travis/travis.sh
