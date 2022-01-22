{ config, pkgs, ... }:

{
  networking = {
    useDHCP = true;
    hostName = "desktop";
    firewall.enable = false;
    wireguard.enable = true;
  };
}
