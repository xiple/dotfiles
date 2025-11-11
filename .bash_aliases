# Bash aliases

## Common aliases

alias ls="ls --color=auto"
alias l.="ls -d .*"
alias ll="ls -l"
alias la="ls -lA"
alias lt="ls -lrt"
alias lh="ls -lh"

alias grep="grep --color=auto"
alias vi="vim"

# frequent typos
alias gti="git"

## Specific aliases

alias cdl='cd ${HOME}/loic'
alias cdp='cd /media/prv'
alias cdm='cd /run/media/${USER}'
alias cdw="cd ${HOME}/work"

if [[ -d ${HOME}/Téléchargements ]]; then
    alias cdd="cd ${HOME}/Téléchargements"
else
    alias cdd="cd ${HOME}/Downloads"
fi

alias c="code"
alias mkdir='mkdir -pv'
alias pdf='evince -f'
alias lbo='libreoffice'
alias f='find . | grep -i'
alias h='history'
alias hgrep='history | grep'
alias ds='du -sm * | sort -n'
alias img="loupe"
