with import <develop> { };
mkShell rec {
  buildInputs = [ nodejs ] ++ (with nodePackages; [ serve yarn ]);

  LD_LIBRARY_PATH = lib.makeLibraryPath [ stdenv.cc.cc.lib ];
}
