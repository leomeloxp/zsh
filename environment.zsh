#if (( C == 256 )); then
#    autoload spectrum && spectrum # Set up 256 color support.
#fi

## Command not found from archwiki
source /usr/share/doc/pkgfile/command-not-found.zsh

## olivierverdier git prompt
source /srv/git/zsh-git-prompt/zshrc.sh

# compinstall autoset options
autoload -Uz compinit
compinit

# Lines added by leomeloxp
autoload -U promptinit
promptinit
autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=512
SAVEHIST=2048
setopt appendhistory autocd nomatch notify
# Set emacs keybindings
bindkey -e


typeset -U fpath
fpath=($Z/functions $fpath)

# Find out how many colors the terminal is capable of putting out.
# Color-related settings _must_ use this if they don't want to blow up on less
# endowed terminals.
C=$(tput colors)

# Important applications.
export EDITOR="emacsclient -t"
export BROWSER=chromium

# Add git/scripts to PATH
PATH="${PATH}:/srv/git/scripts"
PATH="${PATH}:/srv/git/imgur-screenshot"

# Add ruby gems to PATH
#PATH="${PATH}:`ruby -rubygems -e 'puts Gem.user_dir'`/bin"

#RVM stuff
#[[ -s "/usr/local/.rvm/scripts/rvm" ]] && source "/usr/local/.rvm/scripts/rvm"
#PATH="/usr/local/heroku/bin:$PATH"