# Path to your oh-my-zsh configuration.
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="weltenwort"
#ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

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

ZSH_TMUX_AUTOCONNECT=false

source ~/.zgen/zgen.zsh

# check if there's no init script
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/battery
    zgen oh-my-zsh plugins/colored-man
    zgen oh-my-zsh plugins/encode64
    zgen oh-my-zsh plugins/fabric
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/git-extras
    zgen oh-my-zsh plugins/history-substring-search
    zgen oh-my-zsh plugins/httpie
    zgen oh-my-zsh plugins/jump
    zgen oh-my-zsh plugins/mercurial
    zgen oh-my-zsh plugins/mosh
    zgen oh-my-zsh plugins/pass
    zgen oh-my-zsh plugins/pip
    zgen oh-my-zsh plugins/python
    zgen oh-my-zsh plugins/ssh-agent
    zgen oh-my-zsh plugins/gpg-agent
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/systemd
    zgen oh-my-zsh plugins/tmux
    zgen oh-my-zsh plugins/vagrant
    zgen oh-my-zsh plugins/vim-interaction
    zgen oh-my-zsh plugins/virtualenv
    zgen oh-my-zsh plugins/virtualenvwrapper
    zgen oh-my-zsh plugins/vundle
    zgen oh-my-zsh plugins/web-search
    zgen oh-my-zsh plugins/fasd

    zgen load djui/alias-tips
    zgen load nojhan/liquidprompt
    zgen load rimraf/k
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-syntax-highlighting
    zgen load zsh-users/zaw
    zgen load termoshtt/zaw-systemd

    # save all to init script
    zgen save
fi

# User configuration

export PATH=$HOME/bin:$HOME/.gem/ruby/2.2.0/bin:$HOME/.ellipsis/bin:/usr/local/bin:$PATH
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

# Base16 Shell
BASE16_SCHEME="default"
BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

fpath=($HOME/.ellipsis/comp $fpath)
autoload -U compinit; compinit

autoload zmv
alias zmv='noglob zmv'

autoload -U edit-command-line
zle -N edit-command-line
bindkey ‘^xe’ edit-command-line
bindkey ‘^x^e’ edit-command-line

export EDITOR="vim"
export LESS="-RFX"
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS="--python=python2"
export VIRTUAL_ENV_DISABLE_PROMPT=true
export VIRTUALENV_USE_DISTRIBUTE=true

source /usr/bin/virtualenvwrapper.sh

alias psyu="sudo -E pacman -Syu"
alias ranger="LESS=-R TERMCMD=urxvt ranger"
alias rvim="vim --servername ranger"
