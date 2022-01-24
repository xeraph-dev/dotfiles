{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  nodePacks = with nodePackages; [
    serve
    yarn
  ];

  packages = [
    nodejs
  ] ++ nodePacks;

  buildInputs = [
    stdenv.cc.cc.lib
  ];

  makeExports = import /data/nix/makeExports.nix;
in 
mkShell rec { 
  inherit packages;
  inherit buildInputs;

  shellHook = ''
  '' + (makeExports buildInputs);
}

