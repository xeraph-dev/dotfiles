{ config, pkgs, ... }:

with pkgs;
{
  hardware = {
    opengl = {
      enable = true;
      extraPackages = [
        vaapiIntel
        libvdpau-va-gl
        vaapiVdpau
      ];
    };
    pulseaudio = {
      enable = true;
      package = pulseaudioFull;
      support32Bit = true;
    };
  }; 
}
