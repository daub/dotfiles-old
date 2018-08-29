# vim

For best fit requires Vim 8+ with *Python* and *Lua* on Linux.

## Key bindings

`<leader>` is mapped to `Space`

#### General

- `;` to go to *command line* mode

#### Common editing

- `vii` / `vai` - visually select *in* or *around* cursor's indent
- `cs` / `ds` - *change* or *delete* specified [surroundings](https://github.com/tpope/vim-surround)
- `ga` - [align](https://github.com/junegunn/vim-easy-align) by specified character
- `Ctrl-n` - [multicursor](https://github.com/terryma/vim-multiple-cursors) editing
- `Ctrl-/` - toggle comments

#### Tabs, Windows, Splits

- `<leader>1..9` - load specified buffer in current window
- `Ctrl-h,l,j,k` - to move *left*, *right*, *down*, *up* between splits. This also works between vim and tmux splits thanks to [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)
- `<leader>\` - vertical split
- `<leader>-` - horizontal split

#### Files

- `Ctrl-s` - write buffer to file
- `<leader>n,b` - [fuzzy selector](https://github.com/Shougo/denite.nvim) for *files* and *buffers*

#### Other

- `<leader>z` zoom to [focus mode](https://github.com/junegunn/goyo.vim)
- `<leader>t` lookup word under cursor in [Thesaurus](http://thesaurus.com/)
