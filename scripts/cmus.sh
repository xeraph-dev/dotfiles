#!/bin/sh

play_icon=""
pause_icon=""

start_cmus() {
  if [ -z $(pidof cmus) ]; then
    tmux new-session -s cmus -d /run/current-system/sw/bin/cmus > /dev/null
    tmux switch-client -t cmus > /dev/null
  fi
}

play() {
  start_cmus
  sleep .5

  isPlaying=$(cmus-remote --raw status | grep status | awk '{print $2}')
  
  if [ $isPlaying = "playing" ]; then
    cmus-remote --pause
  elif [ $isPlaying = "paused" ] || [ $isPlaying = "stopped" ]; then
    cmus-remote --play 
  fi
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
esac
