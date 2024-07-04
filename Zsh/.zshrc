# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/will/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# Hides the "user@hostname" info when you're logged in as yourself on your local machine
DEFAULT_USER="will"

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

# Path Changes
# Set NPM Globals to be local
export PATH=~/.npm-global/bin:$PATH

# Created by `pipx` on 2023-10-21 22:10:43
export PATH="$PATH:/home/will/.local/bin"

# Add Crates to PATH
export PATH="$PATH:/home/will/.cargo/bin"

export EDITOR=/usr/bin/nano
#crontab uses $VISUAL instead of $EDITOR
export VISUAL=$EDITOR

# Custom aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"
alias extractfolders="find . -mindepth 2 -type f -print -exec mv {} . \;"
alias cleanorphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias random="~/.random.sh"

# Homelab operations
alias homelab="ssh -i /home/will/.ssh/id_ed25519 will@192.168.50.150 -p 30467"
alias mountnas="sudo mount 192.168.50.151:/volume1/media /mnt/NAS"
alias umountnas="sudo umount /mnt/NAS"

# Git add all/commit/push to master
alias gcommit="git add . && git commit"
alias gpush="git add . && git commit && git push origin main"

# Backup Commands
alias fullbackup='sudo rsync -aAXHv --exclude={"/dev/*","/proc/*","/sys/*","/tmp/*","/run/*","/mnt/*","/media/*","/lost+found",".cache","/home/will/games","/home/will/.steam","/home/will/.local/share/Steam","/home/will/Downloads/*","swapfile","/home/will/Videos"} / /home/will/Downloads/backup'
alias homebackup='sudo rsync -aAXHv --exclude={"/lost+found","*/temp/",".cache","*/cache/","/games","/.steam","/.local/share/Steam","/Downloads/*","/Videos"} /home /home/will/Downloads/backup'

# Vite shorthand
alias vite="npm create vite@latest"

# Remove .flac track tag for compilations
alias removetracktags='metaflac --remove-tag="Disc Number" --remove-tag="TOTALTRACKS" --remove-tag="DISC" --remove-tag="TOTALDISCS" --remove-tag="TRACK" --remove-tag="DISCNUMBER" --remove-tag="DISCTOTAL" --remove-tag="DISCC" --remove-tag="TRACKC" --remove-tag="TOTALTRACK" *.flac'
