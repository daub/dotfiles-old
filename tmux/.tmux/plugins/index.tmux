if "test ! -d ~/.tmux/plugins/tpm" \
   "run 'git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm && cd ~/.tmux/plugins/tpm/bin/ && source install_plugins'"

set -g @tpm_plugins "                \
  tmux-plugins/tpm                   \
  tmux-plugins/tmux-prefix-highlight \
"

run -b '~/.tmux/plugins/tpm/tpm'

# vim: ft=tmux
