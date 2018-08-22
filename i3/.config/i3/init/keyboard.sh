#!/bin/sh

setxkbmap \
  -layout us,am,ru \
  -variant ,phonetic-alt,phonetic \
  -option 'grp:alt_shift_toggle' \
  -option 'caps:escape'

if [ -f $HOME/.Xmodmap ]; then
    xmodmap $HOME/.Xmodmap
fi

