#!/bin/sh

kill $(pidof xwinwrap) 2>/dev/null

xwinwrap -fs -ov -- mpv -wid WID --loop --no-audio --hwdec=auto /data/wallpaper/livewallpaper.mp4
#xwinwrap -fs -fdt -ni -b -nf -un -o 1.0 -debug -ov -- mpv -wid WID --loop --no-audio --hwdec=auto /data/wallpaper/livewallpaper.mp4

