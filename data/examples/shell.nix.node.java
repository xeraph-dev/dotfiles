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
    jdk11
  ] ++ nodePacks;

  buildInputs = [
    stdenv.cc.cc.lib
  ];

  HISTFILE=toString ./.history;

  shellHook = ''
    export JAVA_HOME="${jdk11}/lib/openjdk";
    export LD_LIBRARY_PATH=$(nix eval --raw nixpkgs.stdenv.cc.cc.lib)/lib:$LD_LIBRARY_PATH
  '';
}

