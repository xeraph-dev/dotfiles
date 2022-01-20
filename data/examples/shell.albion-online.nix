{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  inherit (builtins) length elemAt;

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
  ];
  
  makeExports = list:
    let 
      len = length list;
      makeExports' = n: return:
        if n == len
        then return
        else  
          let
            path = (elemAt list n) + "/lib" + ":" + return;
          in
            makeExports' (n + 1) path;
    in
      "export LD_LIBRARY_PATH=" + (makeExports' 0 "") + ":$LD_LIBRARY_PATH";

in 
  mkShell rec {
    nativeBuildInputs = [] ++ xOrgPacks ++ packages;

    HISTFILE=toString ./.history;


    shellHook = ''
      export LD_LIBRARY_PATH=/data/lib:$LD_LIBRARY_PATH
    '' + (makeExports nativeBuildInputs);
}

