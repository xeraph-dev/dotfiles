with import <develop> { };
mkShell rec {
  buildInputs = [ nodejs ] ++ (with nodePackages; [ serve yarn ])
    ++ (with elmPackages; [ elm elm-test elm-review elm-format ]);

  LD_LIBRARY_PATH = lib.makeLibraryPath [ stdenv.cc.cc.lib ];
}
