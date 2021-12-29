#!/bin/sh

gpu_temp() {
  echo $(nvidia-smi | awk '{print $3}' | grep "C" | sed "s/[^0-9]//g")
}

case "$1" in
  "-temp"   )   gpu_temp    ;;
esac

