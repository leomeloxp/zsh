# Sets clear alias to cat motd
alias cl="clear && cat /etc/motd"
# ls 
alias ls="ls -la --color=always"
# resource
alias zrc="source ~/.zshrc"
# launch emacs with a daemon
alias e='emacsclient -t -a ""'
# same but with root
alias E='sudo emacsclient -t -a ""'
# startx
alias startx='startx &> ~/.xlog'
# add ssh-agent to the start of every shell
eval $(ssh-agent) && ssh-add -l >/dev/null || alias ssh='ssh-add -l > /dev/null || ssh-add && unalias ssh; ssh'
