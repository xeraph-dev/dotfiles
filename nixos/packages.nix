{ config, pkgs, ... }:

{
  programs = {
    neovim = with pkgs; {
      enable = true;
      withNodeJs = true;
      defaultEditor = true;
      vimAlias = true;
      viAlias = true;
      configure = {
        customRC = ''
          if filereadable("/data/.vimrc")
            source /data/.vimrc
          endif
          let $RUST_SRC_PATH = '${stdenv.mkDerivation {
            inherit (rustc) src;
            inherit (rustc.src) name;
            phases = ["unpackPhase" "installPhase"];
            installPhase = ''cp -r library $out'';
          }}'
        '';
        packages.nixbundle.start = with vimPlugins; [
          rust-vim
          vim-one
          vim-devicons
          vim-airline
          vim-airline-themes
          vim-easymotion
          vim-lua
          nerdtree
          vim-tmux-navigator
          coc-nvim
          coc-highlight
          coc-lua
          coc-rls
          coc-lua
          coc-git
          coc-css
          coc-yaml
          coc-json
          coc-html
          coc-emmet
          coc-spell-checker
          coc-markdownlint
          coc-prettier
          coc-tsserver
          coc-eslint
          coc-vimlsp
          coc-pairs
          auto-pairs
          editorconfig-vim
          supertab
          vim-javascript
          typescript-vim
          vim-jsx-typescript
          vim-yaml
          vim-nix
        ];
      };
    };
    zsh = {
      enable = true;
      shellAliases = {
        get-class = "xprop | grep WM_CLASS";
        get-role = "xprop | grep 'WM_WINDOW_ROLE(STRING)'";
        nf = "clear && echo '\n\n\n' && neofetch && echo '\n\n\n'";
        ls = "lsd";
        l = "ls -l";
        la = "ls -la";
        lla = "ls -la";
        lt = "ls --tree";
        cat = "bat --paging=never";
        cl = "clear";
        nh = "sudo nethogs";
        dh = "df -h";
        ylF     = "yt-dlp -F";
        yl18    = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'";
        yl18s   = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl18p   = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'";
        yl18ps  = "yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl22    = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'";
        yl22s   = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl22p   = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'";
        yl22ps  = "yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es";
        yl251   = "yt-dlp -f 251 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(ext)s'";
        yl251p  = "yt-dlp -f 251 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'";
        ns = "nix-shell";
        nrs = "sudo nixos-rebuild switch";
        nrt = "sudo nixos-rebuild test";
        nrb = "sudo nixos-rebuild boot";
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

    # Terminal
    alacritty
    wezterm

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
    xdotool
    xwinwrap
    
    # Extras
    numlockx
    rofi
    polybarFull
    picom-next

    # Nodejs
    nodejs
    nodejs-12_x
    nodejs-16_x
    yarn

    # Apps
    tdesktop
    slack
    mpv
  ];
}
