#!/bin/sh

if test -z "$DBUS_SESSION_BUS_ADDRESS"; then
  eval "$(dbus-launch --exit-with-session --sh-systax)"
fi
systemctl --user import-environment DISPLAY XAUTHORITY

if command -v dbus-update-activation-environment >/dev/null 2>&1; then
  dbus-update-activation-environment DISPLAY XAUTHORITY
fi

[[ -f ~/.Xresources ]] && xrdb -merge -I "$HOME" ~/.Xresources
[[ -f ~/.wallpaper.png ]] && feh --bg-fill ~/.wallpaper.png

if [[ -d ~/scripts ]]; then
  [[ -f ~/scripts/picom.sh ]] && source ~/scripts/picom.sh
  [[ -f ~/scripts/cmus.sh ]] && source ~/scripts/cmus.sh -start
fi

eww daemon
numlockx &
emote &

pgrep -x sxhkd > /dev/null || sxhkd &
xsetroot -cursor_name left_ptr

setxkbmap -layout us -variant altgr-intl
xmodmap -e "keycode 135 = dead_greek"

oneko -name oneko_neko -fixrootcursor -position '+30' & disown
oneko -name oneko_sakura -fixrootcursor -position '+30+30' -sakura -toname oneko_neko & disown

exec bspwm
