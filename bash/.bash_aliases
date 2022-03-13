# Color aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Bluetooth aliases
alias airpods="bluetoothctl power on && bluetoothctl connect D4:68:AA:80:CA:1"
alias blueoff="bluetoothctl power off"

# Other aliases
alias ssh-git="ssh-add ~/.ssh/Github_key"
alias hst="history -w /dev/stdout | tac | fzf --border=sharp --height=20 | tr -d '\\n' | xclip -sel c"
alias ll="ls -lahF"
alias vi="vim"
