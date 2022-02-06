{ config, pkgs, ... }:

let
  emacs = pkgs.emacs-nox;
  emacsWithPackages = (pkgs.emacsPackagesFor emacs).emacsWithPackages;
in 
  emacsWithPackages (epkgs: (with epkgs.melpaStablePackages; [
  ]) ++ (with epkgs.melpaPackages; [
  ]) ++ (with epkgs.elpaPackages; [
  ]) ++ (with pkgs; [
  ]))
