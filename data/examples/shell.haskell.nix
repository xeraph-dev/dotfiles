{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  haskellPacks = with haskellPackages; [
    (ghcWithPackages (pkgs: []))
  ];

  packages = [
    haskell-language-server
  ] ++ haskellPacks;
in
mkShell rec {
  inherit packages;
}

