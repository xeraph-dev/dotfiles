{ config, pkgs, ... }:

with pkgs;
{
  enable = true;
  gtkUsePortal = true;
  extraPortals = [
    xdg-desktop-portal-gtk
  ];
}
