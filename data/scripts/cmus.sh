#!/bin/sh

play_icon=""
pause_icon=""

start_cmus() {
  if [ -z $(pidof cmus) ]; then
    tmux new-session -s cmus -d /run/current-system/sw/bin/cmus > /dev/null
    tmux switch-client -t cmus > /dev/null
    sleep .5
  fi
}

play() {
  start_cmus

  isPlaying=$(cmus-remote --raw status | grep status | awk '{print $2}')
  
  if [ $isPlaying = "playing" ]; then
    cmus-remote --pause
  elif [ $isPlaying = "paused" ] || [ $isPlaying = "stopped" ]; then
    cmus-remote --play 
  fi
}

name() {
  echo "$(cmus-remote --raw status | grep file | sed "s/file \/data\/Music\///" | sed "s/\.webm//")"
}

status_cmus() {
  isPlaying=$(cmus-remote --raw status | grep status | awk '{print $2}')

  if [ -z $isPlaying ] || [ $isPlaying = "paused" ] || [ $isPlaying = "stopped" ]; then
    echo $play_icon
  elif [ $isPlaying = "playing" ]; then
    echo $pause_icon 
  else
    echo
  fi
}

case "$1" in
  "-start" )    start_cmus     ;;
  "-play"  )    play           ;;
  "-status")    status_cmus    ;;
  "-name"  )    name           ;;
esac
