# Ignore commands beggining with space and 
# erase duplicate in history
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=1000
HISTFILESIZE=2000

# Append to the history file, don't overwrite it
shopt -s histappend

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# Alias definitions
. ~/.bash_aliases

# Make less prettier
if [ -x /usr/bin/lesspipe ]; then
	eval $(lesspipe)
fi

# Color codes
reset="\[\e[0m\]"
usr="\[\e[38;5;213m\]"
hst="\[\e[38;5;200m\]"
pth="\[\e[38;5;127m\]"
cursor="\[\e[38;5;93m\]"

# The prompt
PS1="[$usr\u$reset@$hst\h$reset] $pth\w\n$cursor\$ $reset"
PS2="$cursor+$reset "

unset reset, usr, hst, pth, cursor

PATH=~/.local/bin:$PATH

# Add regular cd PATH
export CDPATH="/home/elouan/.paths"

# Enable programmable completion features
if ! shopt -oq posix; then
	. /usr/share/bash-completion/bash_completion
fi
