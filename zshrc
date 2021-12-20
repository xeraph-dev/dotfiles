#---------------#
#   OH-MY-ZSH   #
#---------------#
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_AUTO_UPDATE="true"
plugins=(
    git
    npm
    docker
    docker-compose
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh


#---------------#
#   Aliasses    #
#---------------#
# Warp
alias wps="warp-cli status"
alias wpc="warp-cli connect"
alias wpd="warp-cli disconnect"

# Get WM_CLASS of program clicked
alias get-class="xprop | grep WM_CLASS "

# Print only neofetch in terminal size=1/4
alias nf="clear && echo '\n\n\n' && neofetch && echo '\n\n\n' && xdotool click 4"

# pacman
alias pm="pacman"
# pacman with sudo
alias spm="sudo pacman"
# Search package
alias pmSs="pm -Ss"
# Install package
alias spmS="spm -S"
# Update database of packages
alias spmSy="spm -Sy"
# Force update database of packages
alias spmSyy="spm -Syy"
# Upgrade system packages
alias spmSyu="spm -Syu"
# Remove package
alias spmR="spm -R"
# Remove package and unnecessary dependencies
alias spmRns="spm -Rns"
# List all packages installed as dependencies
alias pmQd="pm -Qd"
# List all packages installed as dependencies but not needed for other packages
alias pmQdt="pm -Qdt"
# List all packages installed explicitly
alias pmQe="pm -Qe"
# Mostrar informacion del package
alias pmQi="pm -Qi"

# ls
alias ls="ls --color=auto"
alias lss="ls -ls | grep"

# clear
alias cl="clear"

# btop
alias btop="sudo btop"

# nethogs
alias nethogs="sudo nethogs"

# Get disk usage
alias dh="df -h"

# Get formats
alias ylF="yt-dlp -F"

# Video 360p
alias yl18="yt-dlp -f 18 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'"
alias yl18s="yt-dlp -f 18 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
alias yl18p="yt-dlp -f 18 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'"
alias yl18ps="yt-dlp -f 18 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
# Video 720p
alias yl22="yt-dlp -f 22 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s'"
alias yl22s="yt-dlp -f 22 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"
alias yl22p="yt-dlp -f 22 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s'"
alias yl22ps="yt-dlp -f 22 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(height)sp.%(ext)s' --write-auto-sub --sub-format srt --sub-lang en,es"

# Audio best quality
alias yl251="yt-dlp -f 251 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(title)s.%(ext)s'"
alias yl251p="yt-dlp -f 251 -o '$HOME/Downloads/youtube-dl/%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'"


#---------------#
#    Exports    #
#---------------#
export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export AUR_PATH=$HOME/aur
export NODE_ENV=development


#---------------#
#      NVM      #
#---------------#
source /usr/share/nvm/init-nvm.sh

autoload -U add-zsh-hook
load-nvmrc() {
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"
    
    if [ -n "$nvmrc_path" ]; then
        local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")
        
        if [ "$nvmrc_node_version" = "N/A" ]; then
            nvm install
            elif [ "$nvmrc_node_version" != "$node_version" ]; then
            nvm use
        fi
        elif [ "$node_version" != "$(nvm version default)" ]; then
        echo "Reverting to nvm default version"
        nvm use default
    fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

#---------------#
#   Functions   #
#---------------#
function auri {
  sh ~/scripts/auri.sh $1
}

function aurd {
  sh ~/scripts/aurd.sh $1
}

function auru {
  sh ~/scripts/auru.sh $1
}

function gip {
  sh ~/scripts/gip.sh
}
