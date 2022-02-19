{ config, pkgs, ... }:

let unstable = import <nixos-unstable> { config.allowUnfree = true; };
in with unstable; [
  # IDE and Editors
  jetbrains.webstorm
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
  virt-manager
  spice-gtk

  # Social
  tdesktop
  discord
  slack

  # Command line
  starship

  # Nix
  rnix-lsp
  nixfmt

  # Shell
  shfmt
]
