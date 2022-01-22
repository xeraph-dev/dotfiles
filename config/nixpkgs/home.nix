
{ config, pkgs, ... }:
{
  home = {
    username = "xeraph";
    homeDirectory = "/home/xeraph";
    stateVersion = "21.05";
  };

  programs = {
    home-manager = {
      enable = true;
      path = "/data/devel/home-manager";
    };
  };

  nixpkgs.config.allowUnfree = true;
}
