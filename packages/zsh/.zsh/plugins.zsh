export ZPLUG_HOME=~/.zplug
if [[ ! -d $ZPLUG_HOME ]];then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

source $ZPLUG_HOME/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh

zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", \
  use:pure.zsh, \
  from:github, \
  as:theme

zplug "junegunn/fzf-bin", \
  as:command, \
  from:github, \
  rename-to:"fzf"

# zplug "jarun/Buku", \
#   from:github, \
#   as:command, \
#   use:"buku"
#
# zplug "carnager/buku_run", \
#   from:github, \
#   as:command, \
#   use:"buku_run", \
#   rename-to:rofi-buku

zplug filipekiss/zemojify, \
  as:"command", \
  rename-to:emojify

zplug "dylanaraps/fff", \
  from:github, \
  as:command, \
  use:"fff"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load
