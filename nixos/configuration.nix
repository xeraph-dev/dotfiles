{ config, pkgs, ... }:

{
  imports = [
    ./hardware.nix
    ./host.nix
    ./users.nix
    ./services.nix
    ./packages.nix
    ./system.nix
  ];
}
