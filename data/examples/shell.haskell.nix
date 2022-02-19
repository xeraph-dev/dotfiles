with import <develop> { };
mkShell rec {
  buildInputs = [ haskell-language-server ]
    ++ (with haskellPackages; [ hlint (ghcWithPackages (pkgs: [ ])) ]);
}
