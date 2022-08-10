#!/bin/sh

DIR="$(dirname "$0")"

killall polybar 2>/dev/null

echo "---" | tee -a \
  /tmp/polybar_logo.log \
  /tmp/polybar_cpu.log \
  /tmp/polybar_gpu.log \
  /tmp/polybar_ram.log \
  /tmp/polybar_network.log \
  /tmp/polybar_workspaces.log \
  /tmp/polybar_cmus.log \
  /tmp/polybar_audio.log \
  /tmp/polybar_date.log \
  /tmp/polybar_power.log

polybar main --config="$DIR"/bar_logo.ini 2>&1 | tee -a /tmp/polybar_logo.log &
polybar main --config="$DIR"/bar_cpu.ini 2>&1 | tee -a /tmp/polybar_cpu.log &
polybar main --config="$DIR"/bar_gpu.ini 2>&1 | tee -a /tmp/polybar_gpu.log &
polybar main --config="$DIR"/bar_ram.ini 2>&1 | tee -a /tmp/polybar_ram.log &
polybar main --config="$DIR"/bar_network.ini 2>&1 | tee -a /tmp/polybar_network.log &
polybar main --config="$DIR"/bar_workspaces.ini 2>&1 | tee -a /tmp/polybar_workspaces.log &
polybar main --config="$DIR"/bar_cmus.ini 2>&1 | tee -a /tmp/polybar_cmus.log &
polybar main --config="$DIR"/bar_audio.ini 2>&1 | tee -a /tmp/polybar_audio.log &
polybar main --config="$DIR"/bar_date.ini 2>&1 | tee -a /tmp/polybar_date.log &
polybar main --config="$DIR"/bar_power.ini 2>&1 | tee -a /tmp/polybar_power.log &
