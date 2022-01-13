{ config, pkgs, ... }:

{
  xdg.portal = {
    enable = true;
    gtkUsePortal = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
  programs = {
    appgate-sdp.enable = true;
    seahorse.enable = true;
    neovim = with pkgs; {
      enable = true;
      withNodeJs = true;
      defaultEditor = true;
      vimAlias = true;
      viAlias = true;
      configure = {
        customRC = lib.fileContents ./config/vimrc;
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
    };
    zsh = {
      enable = true;
      promptInit = ''
        eval "$(starship init zsh)"
      '';
      shellAliases = {
        # xprop
        get-class = "xprop | grep WM_CLASS";
        get-role  = "xprop | grep 'WM_WINDOW_ROLE(STRING)'";

        # neofetch
        nf        = "clear && echo '\n\n\n' && neofetch && echo '\n\n\n'";

        # lsd
        ls        = "lsd";
        l         = "ls -l";
        la        = "ls -la";
        lla       = "ls -la";
        lt        = "ls --tree";

        # bat
        cat       = "bat --paging=never";

        # clear
        cl        = "clear";

        # nethogs
        nh        = "sudo nethogs";

        # df
        dh        = "df -h";

        # yt-dlp
        ylF       = "yt-dlp -F";
        yl18      = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'";
        yl18s     = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl18p     = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'";
        yl18ps    = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl22      = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'";
        yl22s     = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl22p     = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'";
        yl22ps    = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl251     = "yt-dlp -f 251 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(ext)s'";
        yl251p    = "yt-dlp -f 251 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'";

        # nix-shell
        ns        = "nix-shell --run 'zsh'";

        # nixos-rebuild
        nrs       = "sudo nixos-rebuild switch";
        nrt       = "sudo nixos-rebuild test";
        nrb       = "sudo nixos-rebuild boot";

        # cmus
        cmus      = "tmux new-session -s cmus -d /run/current-system/sw/bin/cmus 2> /dev/null; tmux switch-client -t cmus";
      };
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
      ohMyZsh = {
        enable = true;
        theme = "robbyrussell";
        plugins = [
          "git"
          "npm"
          "docker"
          "docker-compose"
        ];
      };
    };
  };
  
  environment.systemPackages = with pkgs; [
    # IDE and Editors
    jetbrains.webstorm
    vscode

    # Terminal
    alacritty
    termonad

    # Browser
    brave

    # Command line tools
    psmisc
    neofetch
    nethogs
    wget
    git
    ranger
    btop
    sxhkd
    feh
    bat
    lsd
    scrot
    docker-compose
    xclip
    cmus
    tmux
    yt-dlp
    awscli
    openssl
    duf
    rnix-lsp
    starship

    # Extras
    eww
    numlockx
    rofi
    polybarFull
    picom-next
    gnome.adwaita-icon-theme
    haskellPackages.xmobar

    # Apps
    tdesktop
    slack
    mpv
    pavucontrol
    postman
    obs-studio
  ];
}
