#!/bin/sh

cp ~/".xinitrc" .
cp ~/".zprofile" .
cp ~/".zshrc" .

cp ~/".doom.d" . -r

rm "./config" -rf 2>/dev/null
mkdir "./config" -p
mkdir "./config/btop" -p
mkdir "./config/Code/User" -p
mkdir "./config/nvim/lua" -p

cp ~/".config/alacritty" "./config" -r
cp ~/".config/bspwm" "./config" -r
cp ~/".config/btop/btop.conf" "./config/btop"
cp ~/".config/Code/User/settings.json" "./config/Code/User"
cp ~/".config/eww" "./config" -r
cp ~/".config/flameshot" "./config" -r
cp ~/".config/gtk-3.0" "./config" -r
cp ~/".config/neofetch" "./config" -r
cp ~/".config/nvim/lua/custom" "./config/nvim/lua" -r
cp ~/".config/picom" "./config" -r
cp ~/".config/polybar" "./config" -r
cp ~/".config/ranger" "./config" -r
cp ~/".config/rofi" "./config" -r
cp ~/".config/starship.toml" "./config" -r
cp ~/".config/sxhkd" "./config" -r
cp ~/".config/zathura" "./config" -r
cp ~/".config/mimeapps.list" "./config"

rm "./etc" -rf
mkdir "./etc" -p
mkdir "./etc/default" -p

cp "/etc/pacman.conf" "./etc"
cp "/etc/default/grub" "./etc/default"

cp "$HOME/.local/bin/coursera_downloader" "./scripts"
