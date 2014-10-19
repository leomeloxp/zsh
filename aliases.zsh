# Sets clear alias to cat motd
alias cl="clear && cat /etc/motd"
# ls 
alias la="ls -la --color=always"
# resource
alias zrc="source ~/.zshrc"
# launch emacs with a daemon
alias emacs='emacsclient -t -a ""'
# startx
alias startx='startx &> ~/.xlog'
# ssh into navy
alias navy="ssh lain@navy"
# add ssh-agent to the start of every shell
eval $(ssh-agent) && ssh-add -l >/dev/null || alias ssh='ssh-add -l > /dev/null || ssh-add && unalias ssh; ssh'
