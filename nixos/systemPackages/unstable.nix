{ config, pkgs, ... }:

let 
  unstable = import <nixos-unstable> {
    config.allowUnfree = true;
  };
in with unstable; [
  # IDE and Editors
  jetbrains.webstorm

  # Browser
  brave

  # Terminal
  alacritty

  # Apps
  tdesktop
  obs-studio
  flameshot
]
