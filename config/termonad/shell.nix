with import <nixos-unstable> { };
mkShell rec {
  buildInputs = [ haskell-language-server ]
    ++ (with haskellPackages; [ hlint (ghcWithPackages (pkgs: [ termonad ])) ]);
}
