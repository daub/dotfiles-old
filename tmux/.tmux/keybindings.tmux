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

# switch panes using ctrl-hjkl without prefix
is_vim="ps -o state= -o comm= -t '#{pane_tty}' \
    | grep -iqE '^[^TXZ ]+ +(\\S+\\/)?g?(view|n?vim?x?)(diff)?$'"
bind -n C-h if-shell "$is_vim" "send-keys C-h"  "select-pane -L"
bind -n C-j if-shell "$is_vim" "send-keys C-j"  "select-pane -D"
bind -n C-k if-shell "$is_vim" "send-keys C-k"  "select-pane -U"
bind -n C-l if-shell "$is_vim" "send-keys C-l"  "select-pane -R"

# extra
bind r source-file ~/.tmux.conf

# vim: ft=tmux
