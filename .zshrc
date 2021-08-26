set -o vi

NEWLINE=$'\n'
PS1="; "
# PS1="%(?.%F{green}√.%F{red}?%?)%f %B%F{44}%3~%f%b %# "
# RPROMPT='%*'

export VISUAL=vim
export EDITOR="$VISUAL"

### GO PATHS
# export GOPATH=$HOME/go
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"

### HISTORY SETTINGS
# Save history to file
export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
# Additional history data
setopt EXTENDED_HISTORY
export SAVEHIST=5000
export HISTSIZE=2000
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

### CORRECTION
setopt CORRECT
setopt CORRECT_ALL

### Search Backwards
bindkey "^R" history-incremental-search-backward

alias ls='exa --long'
alias lst='exa --long --tree'
alias cat='bat'

source $HOME/.aliases

export REVIEW_BASE=develop
export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:/usr/local/go/bin

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsheval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

### FUNCTIONS ###
