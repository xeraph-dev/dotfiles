{ config, pkgs, ... }:

{
  services = {
    openssh.enable = true;
    xserver = {
      enable = true;
      layout = "us";
      videoDrivers = [ "nvidia" ];
      windowManager.bspwm = {
        enable = true;
      };
      displayManager = {
        lightdm.enable = false;
        startx.enable = true;
      };
    };
  };

  virtualisation.docker = {
    enable = true;
    enableOnBoot = true;
    extraOptions = "--registry-mirror=https://docker.uclv.cu";
  };
}
