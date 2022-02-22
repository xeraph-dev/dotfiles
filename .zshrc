export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
  git
  npm
  yarn
  docker
  docker-compose
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

export EDITOR=nvim
export _JAVA_AWT_WM_NONREPARENTING=1

source /usr/share/nvm/init-nvm.sh
