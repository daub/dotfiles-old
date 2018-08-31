if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && ~/.tmux/plugins/tpm/bin/install_plugins'"

set -g @tpm_plugins "                \
  tmux-plugins/tpm                   \
  tmux-plugins/tmux-prefix-highlight \
"

run '~/.tmux/plugins/tpm/tpm'

# vim: ft=tmux
