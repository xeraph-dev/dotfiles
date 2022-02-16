{ config, pkgs, ... }:

let unstable = import <nixos-unstable> { config.allowUnfree = true; };
in with unstable; [
  # IDE and Editors
  jetbrains.webstorm
  sublime4
  (import ./vscode-with-extensions.nix unstable)

  # Browser
  brave

  # Terminal
  alacritty

  # Apps
  obs-studio
  flameshot
  postman
  inkscape
  mpv
  gnome.gnome-boxes
  virt-manager
  spice-gtk

  # Social
  tdesktop
  discord
  slack

  # Nix
  nixfmt
]
