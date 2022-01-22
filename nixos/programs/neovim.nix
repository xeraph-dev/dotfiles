{ config, pkgs, ... }:

with pkgs;
{
  enable = true;
  withNodeJs = true;
  defaultEditor = true;
  vimAlias = true;
  viAlias = true;
  configure = {
    customRC = lib.fileContents ./../config/vimrc;
    packages.nixbundle.start = with vimPlugins; [
      # Theme
      vim-one
      vim-devicons

      # Airline
      vim-airline
      vim-airline-themes

      # Extras
      vim-easymotion
      nerdtree
      vim-tmux-navigator
      editorconfig-vim
      markdown-preview-nvim
      supertab

      # Code helpers
      auto-pairs

      # Lua
      vim-lua

      # JavaScript/TypeScript
      vim-javascript
      typescript-vim
      vim-jsx-typescript

      # Nix
      vim-nix

      # yaml
      vim-yaml

      # TOML
      vim-toml

      # Haskell
      haskell-vim
      ale

      # Coc
      coc-nvim
    ];
  };
}
