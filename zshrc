# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
CLOJURESCRIPT_HOME=/usr/local/lib/clojurescript/
PATH=$CLOJURESCRIPT_HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
PATH=/usr/local/lib/node_modules/:$PATH
PATH=/usr/local/lib/clojurescript/bin:$PATH
DOTFILES=$HOME/Dropbox/dotfiles
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
alias vim='mvim'
alias vimt='mvim --remote-tab-silent'
alias vi="vim --remote-tab-silent"
alias projects='cd ~/Documents/Workspaces/HTML:JS:Node/'
alias dots="cd ~/Dropbox/dotfiles"
alias gs="git status"
alias undo-commit="git reset --hard HEAD^"
alias glog="git log --pretty=oneline" 
alias hash-last-commit="git log --format=%H | head -1"
alias hash-first-commit="git log --format=%H | tail -1"

export GIT_EDITOR=vim
export VISUAL=vim
export EDITOR=vim
# export MANPATH="/usr/local/man:$MANPATH"
# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
# source $HOME/.zsh-fuzzy-match/fuzzy-match.zsh
