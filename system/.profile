export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
#
export EDITOR=/usr/bin/vim
export BROWSER=/usr/bin/firefox

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
  -option 'caps:escape'

if [ -f $usermodmap ]; then
   xmodmap $usermodmap
fi
