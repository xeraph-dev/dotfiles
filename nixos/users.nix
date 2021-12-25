{ config, pkgs, ... }:

{
  users = with pkgs; {
    defaultUserShell = zsh;
    users = {
      xeraph = {
        isNormalUser = true;
        extraGroups = [
          "wheel"
          "docker"
        ];
      };
    };
  }; 
}
