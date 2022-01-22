{ config, pkgs, ... }:

with pkgs;
let
in {
  imports = [
    ./hardware.nix
    ./networking.nix
    ./users.nix
    ./services.nix
    ./programs.nix
    ./system.nix
  ];

  virtualisation.docker = (import ./virtualisation/docker.nix pkgs);
  xdg.portal = (import ./xdg/portal.nix pkgs);
  environment.systemPackages = (import ./systemPackages.nix pkgs);
}
