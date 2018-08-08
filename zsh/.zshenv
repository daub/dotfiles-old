typeset -U path
# local binaries
path=(~/bin:~/.local/bin $path)
# node modules
path=(~/.npm-packages/bin $path)

typeset -U fpath
fpath=(~/.zsh/functions, $fpath)
#
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="~/.npm-packages/share/man:$(manpath)"
# export MANPATH="~/.npm/share/man:$(MANPATH)"

export EDITOR='vim'

# make zsh/terminfo work for terms with application and cursor modes
case "$TERM" in
    vte*|xterm*)
        zle-line-init() { zle-keymap-select; echoti smkx }
        zle-line-finish() { echoti rmkx }
        zle -N zle-line-init
        zle -N zle-line-finish
        ;;
esac

# backspace
if [[ -n $terminfo[kbs] ]]; then
    bindkey          "$terminfo[kbs]"   backward-delete-char
    bindkey -M vicmd "$terminfo[kbs]"   backward-char
fi
