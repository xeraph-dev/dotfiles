{ config, pkgs, ... }:

{
  networking = {
    useDHCP = false;
    firewall.enable = false;
    hostName = "desktop";
    interfaces = {
      enp3s0.useDHCP = true;
      enp0s20f0u4.useDHCP = true;
    };
    wireguard.enable = true;
  };
}
