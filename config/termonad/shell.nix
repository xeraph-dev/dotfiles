{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  haskellPacks = with haskellPackages; [
    (ghcWithPackages (pkgs: [ termonad ]))
  ];
in
mkShell rec {
  packages = [
    haskell-language-server
  ] ++ haskellPacks;
}

