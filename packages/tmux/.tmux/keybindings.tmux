# prefix
unbind C-b
set -g prefix M-Space
bind Space send-prefix

# make semicolon behave like colon
bind-key \; command-prompt

# windows
bind c new-window -c "#{pane_current_path}"

# panes
bind-key -n M-'\' split-window -h -c '#{pane_current_path}'
bind-key -n M-'-' split-window -v -c '#{pane_current_path}'
unbind '"'
unbind %

unbind =
unbind z
bind = resize-pane -Z

# switch windows alt+number
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
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
