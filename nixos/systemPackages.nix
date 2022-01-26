{ config, pkgs, ... }:

with pkgs; [
  # IDE and Editors
  jetbrains.webstorm

  # Terminal
  termonad

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
  scrot
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
  gnome.gnome-calculator
  haskellPackages.xmobar

  # Apps
  slack
  mpv
  pavucontrol
  postman
  obs-studio
  inkscape
  simplescreenrecorder
  gsmartcontrol

  # Nix utilities
  nix-prefetch-git
  home-manager
]
++ (import ./systemPackages/unstable.nix pkgs)
++ (import ./systemPackages/custom.nix pkgs)
