with import <nixos-unstable> { };
mkShell rec {
  buildInputs = [ nodejs-17_x ] ++ (with nodePackages; [ serve yarn ]);

  LD_LIBRARY_PATH = lib.makeLibraryPath [ stdenv.cc.cc.lib ];
}
