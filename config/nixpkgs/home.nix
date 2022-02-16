
{ config, pkgs, ... }:
let 
  doom-emacs = pkgs.callPackage (builtins.fetchTarball {
    url = https://github.com/vlaci/nix-doom-emacs/archive/master.tar.gz;
  }) {
    doomPrivateDir = "~/.doom.d";
  };
in {
  home = {
    username = "xeraph";
    homeDirectory = "/home/xeraph";
    stateVersion = "21.05";
    packages = [
      doom-emacs
    ];
    file.".emacs.d/init.el".text = ''
      (load "default.el")
    '';
  };

  programs = {
    home-manager = {
      enable = true;
      path = "/data/devel/home-manager";
    };
  };

  nixpkgs.config.allowUnfree = true;
}
