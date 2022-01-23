{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  packages = with pkgs; [
    systemd
  ];

  makeExports = import /data/nix/makeExports.nix;
in 
  mkShell rec {
    inherit packages;

    shellHook = ''
      export LD_LIBRARY_PATH=/data/lib:$LD_LIBRARY_PATH
    '' + (makeExports packages);
}

