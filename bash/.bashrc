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

set -o vi

# Alias definitions
. ~/.dotfiles/bash/.bash_aliases

# Make less prettier
if [ -x /usr/bin/lesspipe ]; then
	eval $(/usr/bin/lesspipe)
fi

# Color codes
reset="\[\e[0m\]"

if [[ -n $COLOR_SCHEME ]]; then
	user="\[\e[$(/usr/bin/xrdb -get bash.colors.user)m\]"
	host="\[\e[$(/usr/bin/xrdb -get bash.colors.host)m\]"
	path="\[\e[$(/usr/bin/xrdb -get bash.colors.path)m\]"
else
	user="\[\e[38;5;202m\]"
	host="\[\e[38;5;208m\]"
	path="\[\e[38;5;220m\]"
fi

# The prompt
PS1="[$user\u$reset@$host\h$reset] $path\w$reset\n\$ "
PS2="> "

PATH=~/.local/bin:$PATH

# Add regular cd PATH
export CDPATH="/home/elouan/.paths"

# Enable programmable completion features
if ! shopt -oq posix; then
	. /usr/share/bash-completion/bash_completion
fi
