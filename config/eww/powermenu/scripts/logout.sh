#!/bin/sh

eww close powermenu

id=$(loginctl list-sessions | grep $(whoami) | awk '{print $1}')

loginctl terminate-session "$id"

