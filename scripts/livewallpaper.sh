#!/bin/sh

kill $(pidof xwinwrap) 2>/dev/null

xwinwrap -fs -ov -- mpv -wid WID --loop --no-audio --hwdec=auto /data/wallpaper/livewallpaper.mp4

