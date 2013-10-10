#!/bin/bash
#
# a spotlight equivalent using dmenu
#
# depends on dmenu.

# Source generic dmenu
if [ -f $XDG_CONFIG_HOME/dmenu/dmenurc ]; then
  . $XDG_CONFIG_HOME/dmenu/dmenurc
else
  DMENU='dmenu -i -l 8'
fi

# Show options, get choice
choice=$((ls -laR ~/Scripts ~/Images ~/Downloads ~/.config/openbox ~/.config/tint2 ~/.config/libfm ~/.config/pcmanfm ~/.config/terminator && ls -la ~/ ls -al ~/.config) | grep ^- | awk '{print $9}' | sort -n | $DMENU -p "Files:")

if [[ $choice ]]; then
        path=`locate $choice`
        echo $path
        ft=`xdg-mime query filetype $path`
        if [[ $ft == "image/png"  || $ft == "image/jpeg" || $ft == "image/jpg" || $ft == "image/bmp" ]]; then
            gloobus-preview $path
        elif [[ $ft == "application/pdf" ]]; then
            evince $path
        elif [[ $ft == "application/vnd.oasis.opendocument.presentation" || $ft == "application/vnd.oasis.opendocument.text" || $ft == "application/msword" ]]; then
            libreoffice $path
        else
            terminator -e "nano $path"
        fi
fi
