{ pkgs, ... }:

with pkgs;
let custom-extensions = import ./vscode-custom-extensions.nix;
in vscode-with-extensions.override {
  vscode = vscode;
  vscodeExtensions = with vscode-extensions;
    [
      # Live Share
      ms-vsliveshare.vsliveshare

      # Theme
      zhuangtongfa.material-theme

      # Formatter | linter
      esbenp.prettier-vscode
      dbaeumer.vscode-eslint

      # Utilities
      formulahendry.auto-rename-tag
      humao.rest-client
      kamikillerto.vscode-colorize
      mikestead.dotenv
      usernamehw.errorlens
      wix.vscode-import-cost

      # Git | GitHub
      donjayamanne.githistory
      eamodio.gitlens

      # Spell Check
      streetsidesoftware.code-spell-checker

      # Graphql
      graphql.vscode-graphql

      # Yaml
      redhat.vscode-yaml

      # nix
      arrterian.nix-env-selector
      brettm12345.nixfmt-vscode

      # Rust
      matklad.rust-analyzer
      serayuzgur.crates

      # Toml
      bungcip.better-toml

      # Bash
      mads-hartmann.bash-ide-vscode

      # Elm
      elmtooling.elm-ls-vscode
    ] ++ (vscode-utils.extensionsFromVscodeMarketplace
      (with custom-extensions; [
        # Comments
        aaron-bond.better-comments

        # Nix
        bbenoist.nix

        # Path intellisense
        christian-kohler.path-intellisense

        # Live server
        ritwickdey.liveserver

        # Icons
        vscode-icons-team.vscode-icons

        # Playground
        wallabyjs.quokka-vscode

        # JavaScript
        xabikos.javascriptsnippets

        # React
        xabikos.reactsnippets

        # Rust
        belfz.search-crates-io
        swellaby.vscode-rust-test-adapter

        # WebAssembly
        dtsvet.vscode-wasm

        # Test
        hbenl.vscode-test-explorer
        ms-vscode.test-adapter-converter
      ]));
}
