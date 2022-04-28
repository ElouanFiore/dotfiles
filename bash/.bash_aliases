# Color aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ip="ip -c"

# Wifi aliases
alias wifi-hs="wpa_cli select_network 1"

# Process aliases
# ps aux | grep "bash" | tr -s ' ' | cut -d" " -f2 | kill -s 9
alias fkill="kill -s 9 --"
process() { eval "ps aux | grep -E 'USER|$1'"  | tac | fzf --height=7 --border=sharp | tr -s ' ' | cut -d' ' -f2 | tr -d '\n' | xclip -sel c; }

# Other aliases
alias upgrade="sudo apt update && sudo apt upgrade"
alias hst="history -w /dev/stdout | sort | uniq | fzf --border=sharp --height=20 | tr -d '\n' | xclip -sel c"
alias ll="ls -lhF"
alias lla="ls -lahF"
alias dotfiles="git -C ~/.dotfiles"
