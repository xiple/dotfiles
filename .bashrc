#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source bash aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Source user specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi
unset rc

# PS1 variable customization
exit_code() {
    # Save the exit status of last command. This
    # needs to be done first otherwise exit status of
    # other commands will be stored in this variable.
    EXIT="$?"

    # PS1 needs to be reset or else it will
    # be appended every time to previous one.
    PS1=""

    # This will be final prompt, whatever set earlier will be
    # overwritten by this.
    if [ "$USER" = "root" ]; then
        PS1="\[\e[1;31m\][$EXIT][\u@\h \W]\$\[\e[0m\] "
    else
        PS1="\[\e[1;32m\][$EXIT][\u@\h \W]\$\[\e[0m\] "
    fi
    export PS1
}

[ -n "$PROMPT_COMMAND" ] && PROMPT_COMMAND="exit_code;$PROMPT_COMMAND" ||
    PROMPT_COMMAND="exit_code"

# Variables
export LANG='en_US.UTF-8'
export HISTIGNORE='pwd:ls:cd'
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim


