{ config, pkgs, ... }:

{
  services = {
    openssh.enable = true;
    flatpak.enable = true;
    gnome.gnome-keyring.enable = true;
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
