{ config, pkgs, ... }:

with pkgs;
{
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
    # home-manager
    hms       = "home-manager switch";
    # cmus
    cmus      = "tmux new-session -s cmus -d /run/current-system/sw/bin/cmus 2> /dev/null; tmux switch-client -t cmus";
  };
  enableCompletion = true;
  autosuggestions.enable = true;
  syntaxHighlighting.enable = true;
  ohMyZsh = {
    enable = true;
    theme = "robbyrussell";
    package = (import <nixos-unstable> {}).oh-my-zsh;
    plugins = [
      "git"
      "npm"
      "docker"
      "docker-compose"
    ];
  };
}
