{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let 
  inherit (builtins) length elemAt;

  packages = with pkgs; [
    zsh
    systemd
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
    inherit packages;

    shellHook = ''
      export LD_LIBRARY_PATH=/data/lib:$LD_LIBRARY_PATH
    '' + (makeExports packages);
}

