# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    npm
    docker
    docker-compose
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#---------------#
#   Aliasses    #
#---------------#
# Warp
alias wps="warp-cli status"
alias wpc="warp-cli connect"
alias wpd="warp-cli disconnect"

# Get WM_CLASS of program clicked
alias get-class="xprop | grep WM_CLASS "
alias get-role="xprop | grep 'WM_WINDOW_ROLE(STRING)'"

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
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

# cat
alias cat='bat --paging=never'

# clear
alias cl="clear"

# btop
#alias btop="sudo btop"

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
export AUR_PATH=/data/aur
export NODE_ENV=development


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


#---------------#
#      NVM      #
#---------------#
export NVM_DIR="/data/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# place this after nvm initialization!
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


source $HOME/.cargo/env
