{ config, pkgs, lib, ... }:

{
  time.timeZone = "America/Havana";

  i18n.defaultLocale = "en_US.UTF-8";

  fonts.fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    (nerdfonts.override {
      fonts = [ 
        "FiraCode"
        "JetBrainsMono"
        "Meslo" 
      ];
    })
  ];

  nix.autoOptimiseStore = true;
  nixpkgs.config = {
    allowUnfree = true;
    pulseaudio = true;
  };

  system = {
    stateVersion = "21.11";
    activationScripts.ldso = lib.stringAfter [ "usrbinenv" ] ''                       
      mkdir -m 0755 -p /lib64                                                                
      ln -sfn ${pkgs.glibc.out}/lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2.tmp   
      mv -f /lib64/ld-linux-x86-64.so.2.tmp /lib64/ld-linux-x86-64.so.2 # atomically replace 
    '';
  };
}
