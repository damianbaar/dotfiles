# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
CLOJURESCRIPT_HOME=/usr/local/lib/clojurescript
DOTFILES=$HOME/Dropbox/dotfiles

PATH=$CLOJURESCRIPT_HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH
PATH=/usr/local/lib/node_modules/:$PATH
PATH=/usr/local/lib/clojurescript/bin:$PATH
PATH=/opt/local/bin:$PATH
PATH=/usr/local/go/bin:$PATH
PATH=$HOME/.cabal/bin:$PATH

export CLOJURESCRIPT_HOME=/Users/damianbaar/Documents/Workspaces/clojurescript/runtime/clojurescript/
export PATH=$PATH:$CLOJURESCRIPT_HOME/bin:$CLOJURESCRIPT_HOME/script

export NODE_PATH=/usr/local/lib/node_modules
export GOPATH=$HOME/Documents/Workspaces/go
export GOBIN=$HOME/Documents/Workspaces/go/bin

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Library/Haskell/bin:$PATH"

PATH=$GOPATH:$PATH
PATH=$GOBIN:$PATH

if [ -e /Users/damianbaar/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/damianbaar/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

NIX_LINK=$HOME/.nix-profile
export PATH=$NIX_LINK/bin:$NIX_LINK/sbin:$PATH

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="ys"
# ZSH_THEME="honukai"
ZSH_THEME="xxf"

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
plugins=(git brew grunt npm cabal git-flow lein taskwarrior zsh-completions)
# autoload -U compinit && compinit


# plugins=(vi-mode)

# bindkey -v
# bindkey -M viins ‘jj’ vi-cmd-mode
# bindkey ‘^R’ history-incremental-search-backward

source $ZSH/oh-my-zsh.sh
source ~/.nvm/nvm.sh

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin":$PATH
alias vim='nvim'
alias vimt='mvim --remote-tab-silent'
alias vi="nvim --remote-tab-silent"
alias node="node --harmony"
alias projects='cd ~/Documents/Workspaces/'
alias workspaces='cd ~/Documents/Workspaces/'
alias dots="cd ~/Dropbox/dotfiles"
alias gs="git status"
alias undo-commit="git reset --hard HEAD^"
alias glog="git log --pretty=oneline"
alias get-hash-last-commit="git log --format=%H | head -1"
alias get-hash-first-commit="git log --format=%H | tail -1"

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
#

[ `uname -s` != "Darwin" ] && return

function tab () {
    local cmd=""
    local cdto="$PWD"
    local args="$@"

    if [ -d "$1" ]; then
        cdto=`cd "$1"; pwd`
        args="${@:2}"
    fi

    if [ -n "$args" ]; then
        cmd="; $args"
    fi

    osascript &>/dev/null <<EOF
        tell application "iTerm"
            tell current terminal
                launch session "Default Session"
                tell the last session
                    write text "cd \"$cdto\"$cmd"
                end tell
            end tell
        end tell
EOF
}



export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
###-begin-ng-completion###
#
# ng command completion script
#
# Installation: ng completion 1>> ~/.bashrc 2>>&1
#           or  ng completion 1>> ~/.zshrc 2>>&1
#

ng_opts='b build completion doc e2e g generate get github-pages:deploy gh-pages:deploy h help i init install lint make-this-awesome new s serve server set t test v version'

build_opts='--aot --base-href --environment --i18n-file --i18n-format --locale --output-path --progress --sourcemap --suppress-sizes --target --vendor-chunk --verbose --watch --watcher -bh -dev -e -o -prod -sm -t -w'
generate_opts='class component directive enum module pipe route service c cl d e m p r s --help'
github_pages_deploy_opts='--base-href --environment --gh-token --gh-username --message --skip-build --target --user-page -bh -e -t'
help_opts='--json --verbose -v'
init_opts='--dry-run inline-style inline-template --link-cli --mobile --name --prefix --routing --skip-npm --source-dir --style --verbose -d -is -it -lc -n -p -sb -sd -sn -v'
new_opts='--directory --dry-run inline-style inline-template --link-cli --mobile --prefix --routing --skip-git --skip-npm --source-dir --style --verbose -d -dir -is -it -lc -p -sb -sd -sg -sn -v'
serve_opts='--aot --environment --hmr --host --i18n-file --i18n-format --live-reload --live-reload-base-url --live-reload-host --live-reload-live-css --live-reload-port --locale --open --port --proxy-config --sourcemap --ssl --ssl-cert --ssl-key --target --watcher -H -e -lr -lrbu -lrh -lrp -o -p -pc -sm -t -w'
set_opts='--global -g'
test_opts='--browsers --build --code-coverage --colors --lint --log-level --port --reporters --single-run --sourcemap --watch -cc -l -sm -sr -w'

version_opts='--verbose'

if test ".$(type -t complete 2>/dev/null || true)" = ".builtin"; then
  _ng_completion() {
    local cword pword opts

    COMPREPLY=()
    cword=${COMP_WORDS[COMP_CWORD]}
    pword=${COMP_WORDS[COMP_CWORD - 1]}

    case ${pword} in
      ng) opts=$ng_opts ;;
      b|build) opts=$build_opts ;;
      g|generate) opts=$generate_opts ;;
      gh-pages:deploy|github-pages:deploy) opts=$github_pages_deploy_opts ;;
      h|help|-h|--help) opts=$help_opts ;;
      init) opts=$init_opts ;;
      new) opts=$new_opts ;;
      s|serve|server) opts=$serve_opts ;;
      set) opts=$set_opts ;;
      t|test) opts=$test_opts ;;
      v|version) opts=$version_opts ;;
      *) opts='' ;;
    esac

    COMPREPLY=( $(compgen -W '${opts}' -- $cword) )

    return 0
  }

  complete -o default -F _ng_completion ng
elif test ".$(type -w compctl 2>/dev/null || true)" = ".compctl: builtin" ; then
  _ng_completion () {
    local words cword opts
    read -Ac words
    read -cn cword
    let cword-=1

    case $words[cword] in
      ng) opts=$ng_opts ;;
      b|build) opts=$build_opts ;;
      g|generate) opts=$generate_opts ;;
      gh-pages:deploy|github-pages:deploy) opts=$github_pages_deploy_opts ;;
      h|help|-h|--help) opts=$help_opts ;;
      init) opts=$init_opts ;;
      new) opts=$new_opts ;;
      s|serve|server) opts=$serve_opts ;;
      set) opts=$set_opts ;;
      t|test) opts=$test_opts ;;
      v|version) opts=$version_opts ;;
      *) opts='' ;;
    esac

    setopt shwordsplit
    reply=($opts)
    unset shwordsplit
  }

  compctl -K _ng_completion ng
else
  echo "Shell builtin command 'complete' or 'compctl' is redefined; cannot perform ng completion."
  return 1
fi

###-end-ng-completion###


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
