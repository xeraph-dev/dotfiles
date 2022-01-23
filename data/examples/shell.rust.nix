{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell rec {
  buildInputs = [
    rustup
  ];

  RUSTC_VERSION = lib.readFile ./rust-toolchain;

  shellHook = ''
    export PATH=$PATH:~/.cargo/bin
    export PATH=$PATH:~/.rustup/toolchains/$RUSTC_VERSION-x86_64-unknown-linux-gnu/bin/
  '';
}
