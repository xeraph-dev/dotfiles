{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  nodePacks = with nodePackages; [
    serve
    yarn
  ];

  packages = [
    nodejs
    jdk11
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
    export JAVA_HOME="${jdk11}/lib/openjdk";
  '' + (makeExports buildInputs);
}

