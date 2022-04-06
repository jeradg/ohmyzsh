# zsh doesn't like it when you use it with multiple users in macOS...
ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH=/Users/jeradgallinger/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# make fzf oh-my-zsh plugin work with Apple Silicon homebrew
export FZF_BASE=/opt/homebrew/Cellar/fzf/0.29.0

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  fzf
  git
  ng
  node
  nvm
  osx
  ruby
  postgres
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Homebrew path (for Apple Silicon installations)
export PATH=/opt/homebrew/bin:$PATH

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias vim="nvim"
alias vi="nvim"
alias oldvim="\vim"

export TERM="tmux-256color"

bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line

# optionally set DEFAULT_USER in ~/.zshrc to your regular username to hide the “user@hostname” info when you’re logged in as yourself on your local machine.
export DEFAULT_USER=jeradgallinger
export USER=`whoami`

export PGDATA="/usr/local/var/postgres"

# Load NVM
# (Don't use the nvm oh-my-zsh plugin. Doesn't load nvm from brew on mac.)
export NVM_DIR="$HOME/.nvm"

. "$(brew --prefix nvm)/nvm.sh"  # This loads nvm on Mac with Homebrew

# added by travis gem
[ -f /Users/jeradgallinger/.travis/travis.sh ] && source /Users/jeradgallinger/.travis/travis.sh

# autojump
[ -f `brew --prefix`/etc/profile.d/autojump.sh  ] && . `brew --prefix`/etc/profile.d/autojump.sh

# start rbenv
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

if [ -e /Users/jeradgallinger/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/jeradgallinger/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Android dev tools
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
