# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


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

## Torrent Crap
# Add LAC to PATH
export PATH="$PATH:/home/will/Music/REDCamp/lac"

export EDITOR=/usr/bin/nano
#crontab uses $VISUAL instead of $EDITOR
export VISUAL=$EDITOR

# Custom aliases
alias zshconfig="nano ~/.zshrc"
alias extractfolders="find . -mindepth 2 -type f -print -exec mv {} . \;"
alias cleanorphans="sudo pacman -Qtdq | sudo pacman -Rns -"
alias random="~/.random.sh"

# Homelab operations
alias homelab="ssh -i /home/will/.ssh/id_ed25519 will@192.168.50.150 -p 30467"
alias mountnas="sudo mount 192.168.50.205:/mnt/user/media /mnt/NAS"
alias umountnas="sudo umount /mnt/NAS"

# Git add all/commit/push to master
alias gcommit="git add . && git commit"
alias gpush="git add . && git commit && git push origin main"

# Backup Commands
alias homebackup='sudo rsync -aAXHv --exclude={"/lost+found","*/temp/",".cache","*/cache/","/games","/.steam","/.local/share/Steam","/Downloads/*","/Videos"} /home /home/will/Downloads/backup'

# Vite shorthand
alias vite="npm create vite@latest"

# Remove .flac track tag for compilations
alias removetracktags='metaflac --remove-tag="Disc Number" --remove-tag="TOTALTRACKS" --remove-tag="DISC" --remove-tag="TOTALDISCS" --remove-tag="TRACK" --remove-tag="DISCNUMBER" --remove-tag="DISCTOTAL" --remove-tag="DISCC" --remove-tag="TRACKC" --remove-tag="TOTALTRACK" *.flac'

# RED Automation
alias redscrape='cd /home/will/Music/REDCamp && python3 /home/will/Music/REDCamp/scrape.py'
alias reddownload='cd /home/will/Music/REDCamp && python3 /home/will/Music/REDCamp/redcamp.py --download-releases'
alias redconvert='cd /home/will/Music/REDCamp && red-trul --torrent-dir=/home/will/Downloads -t=/home/will/Music/Data --torrent-id='
