# Merge in defaults
userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then
  xrdb -merge "$userresources"
fi

# Setup keyboard

usermodmap=$HOME/.Xmodmap

setxkbmap \
  -model thinkpadz60 \
  -layout us,am,ru \
  -variant ,phonetic-alt,phonetic \
  -option 'grp:shifts_toggle' \
  -option 'caps:ctrl_modifier'

if [ -f $usermodmap ]; then
   xmodmap $usermodmap
fi

xcape -e 'Caps_Lock=Escape'

