#!/bin/sh

cp ~/".xinitrc" .
cp ~/".zprofile" .
cp ~/".zshrc" .

rm "./config" -rf 2>/dev/null
mkdir "./config" -p
mkdir "./config/btop" -p
mkdir "./config/Code/User" -p

cp ~/".config/alacritty" "./config" -r
cp ~/".config/bspwm" "./config" -r
cp ~/".config/btop/btop.conf" "./config/btop"
cp ~/".config/Code/User/settings.json" "./config/Code/User"
cp ~/".config/eww" "./config" -r
cp ~/".config/flameshot" "./config" -r
cp ~/".config/gtk-3.0" "./config" -r
cp ~/".config/neofetch" "./config" -r
cp ~/".config/nvim" "./config" -r
cp ~/".config/picom" "./config" -r
cp ~/".config/polybar" "./config" -r
cp ~/".config/rofi" "./config" -r
cp ~/".config/starship.toml" "./config" -r
cp ~/".config/sxhkd" "./config" -r

rm "./etc" -rf
mkdir "./etc/docker" -p

cp "/etc/docker/daemon.json" "./etc/docker" -r
