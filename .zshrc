export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
  pip
  npm
  yarn
  docker
  docker-compose
  rust
  nvm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

alias get-class="xprop | grep WM_CLASS"
alias get-role="xprop | grep 'WM_WINDOW_ROLE(STRING)'"
alias nf="clear && echo '\n\n\n' && neofetch && echo '\n\n\n'"
alias ls="lsd"
alias l="ls -l"
alias la="ls -la"
alias lla="ls -la"
alias lt="ls --tree"
alias cat="bat --paging=never"
alias cl="clear"
alias nh="sudo nethogs"
alias dh="df -h"
alias du="du -hcs"
alias ylF="yt-dlp -F"
alias yl18="yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'"
alias yl18s="yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
alias yl18p="yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'"
alias yl18ps="yt-dlp -f 18 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
alias yl22="yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'"
alias yl22s="yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
alias yl22p="yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'"
alias yl22ps="yt-dlp -f 22 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
alias yl251="yt-dlp -f 251 -o '/data/youtube-dl/%(uploader)s/%(title)s.%(ext)s'"
alias yl251p="yt-dlp -f 251 -o '/data/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'"
alias cmus="tmux new-session -s cmus -d /usr/bin/cmus 2> /dev/null; tmux switch-client -t cmus"
alias vi="nvim"
alias vim="nvim"
alias wg-up="wg-quick up /data/wg.conf"
alias wg-down="wg-quick down /data/wg.conf"
alias docker-start="sudo systemctl start docker"
alias nexus-mount="sudo mount /dev/disk/by-label/nexus /nexus-data"
alias nexus-docker="docker run -d -p 8081:8081 --rm --name nexus -v /nexus-data:/nexus-data sonatype/nexus3"
alias verdaccio-docker="docker run --rm -d -p 7001:4873 --name verdaccio verdaccio/verdaccio:5"
alias open="xdg-open"
alias time="/usr/bin/time -f 'ram=%M;cpu=%P;exit_status=%x;time=%e'"
alias ec="expressvpn connect"
alias ed="expressvpn disconnect"
alias es="expressvpn status"
alias copy="rsync -avh"

export EDITOR=nvim
export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_IM_MODULE=xim
export npm_config_target_arch=x64

export ANDROID_HOME=$HOME/android-sdk
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/emulator:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH

export JUST_HOME=$HOME/just
export JUST_TARGET=$JUST_HOME
export PATH=$JUST_HOME:$PATH

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.cabal/bin:$PATH
export PATH=$HOME/.npm-global/bin:$PATH

source ~/.cargo/env

# pnpm
export PNPM_HOME="/home/xeraph/.pnpm-global"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

eval "$(fnm env --use-on-cd)"
