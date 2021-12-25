{ config, pkgs, ... }:

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

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "21.11";
}
