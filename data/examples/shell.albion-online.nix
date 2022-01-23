{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  xOrgPacks = with xorg; [
    libX11
    libXrandr
    libXcomposite
    libXcursor
    libXdamage
    libXfixes
    libXi
    libXtst
    libxcb
    libXext
    libXrender
    libXinerama
    libXxf86vm
  ];

  packages = with pkgs; [
    stdenv.cc.cc.lib
    libGL
    zlib
    glib
    nss
    nspr
    expat
    freetype
    libffi
    systemd
    libpulseaudio
    libdrm
    wayland
    libxkbcommon
  ] ++ xOrgPacks;

  makeExports = import /data/nix/makeExports.nix;
in 
mkShell rec {
  inherit packages;

  shellHook = ''
    export LD_LIBRARY_PATH=/data/lib:$LD_LIBRARY_PATH
  '' + (makeExports packages);
}

