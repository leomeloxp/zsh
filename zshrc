# zshrc: Configuration	for the Zshell

# Custom version by Leo Melo <leomeloxp@gmail.com>
# Slightly inspired by P.C. Shyamshankar <sykora@lucentbeing.com>

# Where everything is.
Z=/srv/git/zsh
# Checking for colour support
C=$(tput colors)

# Source aliases settings
source $Z/aliases.zsh

# Source completions 
source $Z/completions.zsh

# Source environment settings
source $Z/environment.zsh

# Source options for Z-shell
source $Z/options.zsh

# Set the prompt.
source $Z/functions/spectrum

if (( C == 256 )); then
    source $Z/prompt.zsh
    export TERM="xterm-256color"
else
    source $Z/prompt.zsh
fi

#Lastly, shows Message of the day
cat /etc/motd

export NVM_DIR="/usr/local/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
