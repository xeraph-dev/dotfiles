with import <nixos-unstable> { };
mkShell rec {
  buildInputs = [ cargo cargo-watch rustc rustfmt ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
