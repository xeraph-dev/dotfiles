{ config, pkgs, ... }:

with pkgs;
let
in [
  # IDE and Editors
  jetbrains.webstorm

  # Terminal
  alacritty
  termonad

  # Browser
  brave

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
  picom-next
  gnome.adwaita-icon-theme
  haskellPackages.xmobar

  # Apps
  tdesktop
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
++ (import ./systemPackages/vscode-with-extensions.nix pkgs)
