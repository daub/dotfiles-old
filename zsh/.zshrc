for aliasfile in ~/.aliases/*; do
  if [ -f "$aliasfile" ]; then
    source "$aliasfile"
  fi
done

# If you come from bash you might have to change your $PATH.
# ssh
export SSH_KEY_PATH='~/.ssh/rsa_id'

# Navigation
setopt auto_cd

# .zshrc
source ~/.zshrc.local
source ~/.zsh/plugins.zsh
source ~/.zsh/history.zsh
source ~/.zsh/completion.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
