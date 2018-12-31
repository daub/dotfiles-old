# prefix
unbind C-b
set -g prefix C-Space
bind Space send-prefix

# make semicolon behave like colon
bind-key \; command-prompt

# windows
bind c new-window -c "#{pane_current_path}"

# panes
bind \ split-window -h -c '#{pane_current_path}'
bind - split-window -v -c '#{pane_current_path}'
unbind '"'
unbind %

unbind =
unbind z
bind = resize-pane -Z

unbind M-1
unbind M-2
unbind M-3
unbind M-4
# unbind M-5
bind-key -T prefix | select-layout main-vertical\; resize-pane -t 0 -R 60
bind-key -T prefix _ select-layout tiled

# switch windows using prefix-hjkl
unbind l
bind-key -T prefix       l                 next-window
bind-key -T prefix       h                 previous-window

bind-key -T prefix Q kill-pane
unbind x

# vi mode
set-window-option -g mode-keys vi

bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
bind-key -T copy-mode-vi Escape send -X cancel

# reload config
bind r source-file ~/.tmux.conf

# vim: ft=tmux
