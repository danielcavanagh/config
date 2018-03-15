#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

xrandr --output HDMI-1 --primary
xrandr --output DVI-I-1 --right-of HDMI-1

tmux setenv -g -t main DISPLAY $DISPLAY

firefox &
nvim-qt &
nvim-qt &
nvim-qt &
urxvt &
dunst &
dwms &

exec dwm
