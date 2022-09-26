typeset -U path
# local binaries
path=(~/bin:~/.local/bin $path)

typeset -U fpath
fpath=(~/.zsh/functions, $fpath)

typeset -U fpath
fpath=(~/.gem/ruby/2.6.0/bin, $fpath)

export KEYTIMEOUT=1

# make zsh/terminfo work for terms with application and cursor modes
case "$TERM" in
  vte*|xterm*)
    zle-line-init() { echoti smkx }
    zle-line-finish() { echoti rmkx }
    zle -N zle-line-init
    zle -N zle-line-finish
    ;;
esac

# ssh agend
SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# backspace
if [[ -n $terminfo[kbs] ]]; then
  bindkey          "$terminfo[kbs]"   backward-delete-char
  bindkey -M vicmd "$terminfo[kbs]"   backward-char
fi

# Source env
for exportfile in ~/.exports/*; do
  if [ -f "$exportfile" ]; then
    source "$exportfile"
  fi
done

