#!/bin/sh

if [ -f "$HOME/.xinitrc" ]; then
  if [ -f "./.xinitrc" ]; then
    rm "./.xinitrc"
  fi
  cp "$HOME/.xinitrc" .
fi

if [ -f "$HOME/.zprofile" ]; then
  if [ -f "./.zprofile" ]; then
    rm "./.zprofile"
  fi
  cp "$HOME/.zprofile" .
fi

if [ -d "./config" ]; then
  rm "./config" -rf
fi

mkdir "./config" -p

if [ -d ~/".config/alacritty" ]; then
  cp ~/".config/alacritty" "./config" -r
fi

if [ -d ~/".config/bspwm" ]; then
  cp ~/".config/bspwm" "./config" -r
fi

if [ -d ~/".config/btop" ] && [ -f ~/".config/btop/btop.conf" ]; then
  if [ ! -d "./config/btop" ]; then
    mkdir "./config/btop" -p
  fi
  cp ~/".config/btop/btop.conf" "./config/btop"
fi

if [ -d ~/".config/Code" ] && [ -d ~/".config/Code/User" ] && [ -f ~/".config/Code/User/settings.json" ]; then
  if [ ! -d "./config/Code" ] || [ ! -d "./config/Code/User" ]; then
    mkdir "./config/Code/User" -p
  fi
  cp ~/".config/Code/User/settings.json" "./config/Code/User"
fi

if [ -d ~/".config/eww" ]; then
  cp ~/".config/eww" "./config" -r
fi

if [ -d ~/".config/flameshot" ]; then
  cp ~/".config/flameshot" "./config" -r
fi

if [ -d ~/".config/gtk-3.0" ]; then
  cp ~/".config/gtk-3.0" "./config" -r
fi

if [ -d ~/".config/neofetch" ]; then
  cp ~/".config/neofetch" "./config" -r
fi

if [ -d ~/".config/nvim" ] && [ -f ~/".config/nvim/coc-settings.json" ]; then
  if [ ! -d "./config/nvim" ]; then
    mkdir "./config/nvim" -p
  fi
  cp ~/".config/nvim/coc-settings.json" "./config"
fi

if [ -d ~/".config/picom" ]; then
  cp ~/".config/picom" "./config" -r
fi

if [ -d ~/".config/polybar" ]; then
  cp ~/".config/polybar" "./config" -r
fi

if [ -d ~/".config/rofi" ]; then
  cp ~/".config/rofi" "./config" -r
fi

if [ -f ~/".config/starship.toml" ]; then
  cp ~/".config/starship.toml" "./config" -r
fi

if [ -d ~/".config/sxhkd" ]; then
  cp ~/".config/sxhkd" "./config" -r
fi
