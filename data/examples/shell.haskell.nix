with import <nixos-unstable> { };
mkShell rec {
  buildInputs = [ haskell-language-server ]
    ++ (with haskellPackages; [ (ghcWithPackages (pkgs: [ ])) ]);
}

