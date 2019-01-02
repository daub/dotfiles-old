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

# Navigation
setopt auto_cd

# .zshrc
source ~/.zshrc.local
source ~/.zsh/plugins.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh
