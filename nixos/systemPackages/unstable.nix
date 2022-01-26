{ config, pkgs, ... }:

let 
  unstable = import <nixos-unstable> {};
in with unstable; [
  # Browser
  brave

  # Terminal
  alacritty

  # Apps
  tdesktop
]
