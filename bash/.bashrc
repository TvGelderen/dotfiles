# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PROMPT_COMMAND='PS1_CMD1=$(git branch 2>/dev/null | grep '"'"'*'"'"' | colrm 1 2)';
PS1='[\[\e[38;5;63;1m\]\t\[\e[0m\]] \[\e[38;5;171m\]\u\[\e[0m\]@\[\e[38;5;84m\]\H\[\e[0m\] \[\e[38;5;75m\]\w\[\e[0m\] \[\e[38;5;82;3m\]${PS1_CMD1}\n\[\e[0m\]\\$ '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

set -o vi

export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/bin/nvim-linux64/bin"
export PATH="$PATH:/usr/local/bin/node-linux-x64/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/home/tvgelderen/go/bin"

export LS_COLORS=$LS_COLORS:'di=38;5;105;1';
