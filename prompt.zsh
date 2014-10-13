#Color variables
creset="%{$reset_color%}"
cblack="%{$fg[black]%}"
blackb="%{$fg_bold[black]%}"
cwhite="%{$fg[white]%}"
whiteb="%{$fg_bold[white]%}"
cred="%{$fg[red]%}"
redb="%{$fg_bold[red]%}"
cgreen="%{$fg[green]%}"
greenb="%{$fg_bold[green]%}"
cblue="%{$fg[blue]%}"
blueb="%{$fg_bold[blue]%}"
ccyan="%{$fg[cyan]%}"
cyanb="%{$fg_bold[cyan]%}"
cmagenta="%{$fg[magenta]%}"
magentab="%{$fg_bold[magenta]%}"
cyellow="%{$fg[yellow]%}"
yellowb="%{$fg_bold[yellow]%}"

#Defining prompt
if [ $(id -u) != "0" ]; then
PROMPT="┌─[$cblue%m$cwhite$ccyan%n$cwhite]──[$cgreen%~$cwhite]──\$(git_super_status)
└─[$cyellow%#$cwhite]─ "
else 
PROMPT="┌─[$cblue%m$cwhite$cred%n$cwhite]──[$cgreen%~$cwhite]──\$(git_super_status)
└─[$cred%#$cwhite]─ "
fi

# Change RPROMPT according to character support
if [ $TERM != "linux" ]; then
RPROMPT="%{$(echotc UP 1)%}$cwhite──[$cmagenta$(date "+%X" | cut -c-10)$cwhite]%{$(echotc DO 1)%}"
else
RPROMPT="%{$(echotc UP 1)%}$cwhite──[$cmagenta%T$cwhite]%{$(echotc DO 1)%}"
fi

## Define Terminal Title
prompt_host="${(%):-%m}"
prompt_user="${(%):-%n}"
prompt_char="${(%):-%~}"

precmd(){
        printf '\e]0;%s@%s: %s\a' "${prompt_user}" "${prompt_host}" "${prompt_char}"
}

preexec(){
        printf '\e]0;%s [%s@%s: %s]\a' "$2" "${prompt_user}" "${prompt_host}" "${prompt_char}"
}
