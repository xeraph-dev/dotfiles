#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -ov -- mpv -wid WID --loop --no-audio --hwdec=auto ~/.wallpaper/livewallpaper.mp4

