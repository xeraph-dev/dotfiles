#!/bin/sh

kill $(pidof picom) 2>/dev/null

picom --config /data/picom.conf --experimental-backends &
