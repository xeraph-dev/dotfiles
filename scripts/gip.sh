#!/bin/bash

ip=$(curl --silent api.ipify.org)

if [ "$1" = "local" ] || [ "$1" = "online" ];then
    echo "$1" > "$HOME/.gip_mode"
fi

mode="online"

if [ -f "$HOME/.gip_mode" ]; then
    mode=$(cat "$HOME/.gip_mode")
fi

if [[ "$ip" =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]] && [ $mode = "online" ]; then
    echo "$ip"
else
    if [ "/usr/bin/hostname" ]; then
        echo $(hostname -i)
    fi
fi