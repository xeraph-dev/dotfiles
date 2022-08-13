#!/bin/sh

cp "$HOME/.xinitrc" .
cp "$HOME/.zprofile" .
cp "$HOME/.zshrc" .

cp "$HOME/.doom.d" . -r

rm "./.config" -rf 2>/dev/null
mkdir "./.config" -p
mkdir "./.config/btop" -p
mkdir "./.config/nvim/lua" -p

cp "$HOME/.config/alacritty" "./.config" -r
cp "$HOME/.config/bspwm" "./.config" -r
cp "$HOME/.config/btop/btop.conf" "./.config/btop"
cp "$HOME/.config/eww" "./.config" -r
cp "$HOME/.config/flameshot" "./.config" -r
cp "$HOME/.config/gtk-3.0" "./.config" -r
cp "$HOME/.config/neofetch" "./.config" -r
cp "$HOME/.config/nvim/lua/custom" "./.config/nvim/lua" -r
cp "$HOME/.config/picom" "./.config" -r
cp "$HOME/.config/polybar" "./.config" -r
cp "$HOME/.config/ranger" "./.config" -r
cp "$HOME/.config/rofi" "./.config" -r
cp "$HOME/.config/starship.toml" "./.config" -r
cp "$HOME/.config/sxhkd" "./.config" -r
cp "$HOME/.config/zathura" "./.config" -r
cp "$HOME/.config/mimeapps.list" "./.config"

rm "./etc" -rf
mkdir "./etc/default" -p
mkdir "./etc/pacman.d" -p

cp "/etc/pacman.conf" "./etc"
cp "/etc/default/grub" "./etc/default"
cp "/etc/pacman.d/mirrorlist" "./etc/pacman.d"

rm "./.local" -rf
mkdir "./.local/bin" -p

cp "$HOME/.local/bin/coursera_downloader" "./.local/bin"
