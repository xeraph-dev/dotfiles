with import <develop> { };
mkShell rec {
  buildInputs = [ cargo cargo-watch cargo-make rustc rustfmt ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
