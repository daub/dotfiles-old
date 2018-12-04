# Options
set -g status-interval 1
set -g status on

# Colors

# Status bar
set -g status-bg black
set -g status-fg white
set -g status-attr none

# Panes
set -g pane-border-bg black
set -g pane-border-fg black
set -g pane-active-border-bg black
set -g pane-active-border-fg brightblack
set -g display-panes-colour black
set -g display-panes-active-colour brightblack

# Clock Mode

setw -g clock-mode-colour cyan

# Messages

set -g message-fg cyan
set -g message-bg brightblack
set -g message-command-fg cyan
set -g message-command-bg brightblack

# Content

# Layout
set -g status-justify left

# Left
set -g status-left "" # "#[fg=black,bg=blue,bold] #S "
set -g status-right "#{prefix_highlight}"
# set -g status-right "#{prefix_highlight} #[fg=cyan,bg=brightblack,nobold,noitalics,nounderscore] #[fg=black,bg=cyan,bold] #H "

#+--- Windows ---+
set -g window-status-format "#[fg=brightblue,bg=black] #[noitalics]#W "
set -g window-status-current-format "#[fg=black,bg=brightcyan] #[fg=black,bg=brightcyan]#W "
set -g window-status-separator " "

# Plugin support

set -g @prefix_highlight_fg black
set -g @prefix_highlight_bg brightcyan

set -g @prefix_highlight_prefix_prompt '^-'
set -g @prefix_highlight_copy_mode_attr "fg=black,bg=brightcyan"

# vim: ft=tmux
