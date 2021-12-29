{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  nodePacks = with nodePackages; [
    serve
    yarn
  ];
in 
mkShell rec { 
  packages = [
    nodejs
  ] ++ nodePacks;

  buildInputs = [
    stdenv.cc.cc.lib
  ];

  HISTFILE=toString ./.history;

  shellHook = ''
    export LD_LIBRARY_PATH=$(nix eval --raw nixpkgs.stdenv.cc.cc.lib)/lib:$LD_LIBRARY_PATH
  '';
}

