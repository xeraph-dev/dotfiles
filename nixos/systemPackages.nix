{ config, pkgs, ... }:

with pkgs;
[
  jetbrains.fleet

  # Command line tools
  psmisc
  neofetch
  nethogs
  wget
  git
  ranger
  btop
  sxhkd
  feh
  bat
  lsd
  docker-compose
  xclip
  cmus
  tmux
  yt-dlp
  awscli
  openssl
  duf
  rnix-lsp
  starship
  zathura
  lxappearance
  gh

  # Extras
  eww
  numlockx
  rofi
  polybarFull
  gnome.adwaita-icon-theme

  # Apps
  pavucontrol
  simplescreenrecorder
  gsmartcontrol

  # Nix utilities
  nix-prefetch-git
  home-manager
] ++ (import ./systemPackages/unstable.nix pkgs)
++ (import ./systemPackages/custom.nix pkgs)
