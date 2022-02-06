{ config, pkgs, ... }:

{
  services = {
    openssh.enable = true;
    flatpak.enable = true;
    gnome.gnome-keyring.enable = true;
    emacs = {
      install = true;
      enable = true;
      package = (import ./services/emacs.nix pkgs);
    };
    xserver = {
      enable = true;
      layout = "us";
      videoDrivers = [ "nvidia" ];
      windowManager = {
        bspwm = {
          enable = true;
        };
        xmonad = {
          enable = true;
          enableContribAndExtras = true;
        };
      };
      displayManager = {
        lightdm.enable = false;
        startx.enable = true;
      };
    };
  };
}
