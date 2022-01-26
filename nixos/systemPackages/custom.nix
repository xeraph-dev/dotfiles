{ config, pkgs, ... }:

[
  (import ./vscode-with-extensions.nix pkgs)
  (import ./picom.nix pkgs)
]
