# tmux

## Command line

- `tmux` - create a new session
- `tmux ls` - list sessions
- `tmux {attach|at} -t {session_name}` - attach to session
- `tmux kill-session -t {session_name}` - kill session

### tpm

- `tpm install [plugin]` - install tmux plugin from git repo

## Key bindings

`<prefix>` is mapped to `Ctrl-Space`

#### General

`<prefix> ?` - help
`<prefix> ;` - to go to *command line* mode
`<prefix> d` - detach

#### Windows

- `<prefix> 1..9` - load window with specified index
- `<prefix> l` - next window
- `<prefix> h` - previous window

#### Panes

- `<prefix> \` - vertical split
- `<prefix> -` - horizontal split
- `<prefix> =` - maximize pane
- `<prefix> |` - re-arrange as main-vertical layout
- `<prefix> _` - re-arrange as tiled layout
- `Ctrl-[h,l,j,k]` - navigate panes with [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)

#### Copy mode (vi mode)

- `<prefix> [` - enter copy mode
- `v` - start selection
- `y` - yank to system clipboard
