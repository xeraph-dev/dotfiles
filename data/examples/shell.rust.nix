{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell rec {
  buildInputs = with pkgs; [
    rustup
  ];
  RUSTC_VERSION = pkgs.lib.readFile ./rust-toolchain;
  HISTFILE=toString ./.history;
  shellHook = ''
    export PATH=$PATH:~/.cargo/bin
    export PATH=$PATH:~/.rustup/toolchains/$RUSTC_VERSION-x86_64-unknown-linux-gnu/bin/
    '';
}
