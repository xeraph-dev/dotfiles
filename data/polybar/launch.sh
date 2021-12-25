#!/bin/bash

set -o nounset                          

kill $(pidof polybar) 2>/dev/null

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

polybar main --config=/data/polybar/bar_logo.ini 2>&1 | tee -a /tmp/polybar_logo.log & disown
polybar main --config=/data/polybar/bar_cpu.ini 2>&1 | tee -a /tmp/polybar_cpu.log & disown
polybar main --config=/data/polybar/bar_gpu.ini 2>&1 | tee -a /tmp/polybar_gpu.log & disown
polybar main --config=/data/polybar/bar_ram.ini 2>&1 | tee -a /tmp/polybar_ram.log & disown
polybar main --config=/data/polybar/bar_network.ini 2>&1 | tee -a /tmp/polybar_network.log & disown
polybar main --config=/data/polybar/bar_workspaces.ini 2>&1 | tee -a /tmp/polybar_workspaces.log & disown
polybar main --config=/data/polybar/bar_cmus.ini 2>&1 | tee -a /tmp/polybar_cmus.log & disown
polybar main --config=/data/polybar/bar_audio.ini 2>&1 | tee -a /tmp/polybar_audio.log & disown
polybar main --config=/data/polybar/bar_date.ini 2>&1 | tee -a /tmp/polybar_date.log & disown
polybar main --config=/data/polybar/bar_power.ini 2>&1 | tee -a /tmp/polybar_power.log & disown
