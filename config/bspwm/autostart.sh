#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

# Desktop 1
if [ -z $(pidof webstorm)  ]; then webstorm & fi

# Desktop 2
if [ -z $(pidof vivaldi-bin) ]; then vivaldi-stable & fi

# Desktop 3
if [ -z $(pidof alacritty) ]; then 
  alacritty & 
  sleep .5
  alacritty & 
  sleep .5
  alacritty -e btop & 
fi

# Desktop 4
if [ -z $(pidof telegram-desktop) ]; then telegram-desktop & fi
sleep .5
if [ -z $(pidof slack) ]; then slack & fi

