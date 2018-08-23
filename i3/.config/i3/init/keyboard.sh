#!/bin/sh

setxkbmap \
  -model thinkpadz60 \
  -layout us,am,ru \
  -variant ,phonetic-alt,phonetic \
  -option 'lctrl_lwin_toggle' \
  -option 'caps:escape'

if [ -f $HOME/.Xmodmap ]; then
#   xmodmap $HOME/.Xmodmap
fi

