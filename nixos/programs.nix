{ config, pkgs, ... }:

{
  programs = {
    adb.enable = true;
    appgate-sdp.enable = true;
    seahorse.enable = true;
    neovim = (import ./programs/neovim.nix pkgs);
    zsh = (import ./programs/zsh.nix pkgs);
  };
}
