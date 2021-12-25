#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

# Desktop 2
if [ -z $(pidof brave) ]; then brave & fi

# Desktop 4
if [ -z $(pidof telegram-desktop) ]; then telegram-desktop & fi
sleep .5
#if [ -z $(pidof slack) ]; then slack & fi

