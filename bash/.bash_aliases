# Color aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ip="ip -c"

# Wifi aliases
alias wifi-on="rfkill unblock wifi"
alias wifi-down="rfkill block wifi"
alias wifi-hs="wifi-on && wpa_cli select_network 1"

# Bluetooth aliases
alias ble-on="rfkill unblock bluetooth"
alias ble-down="rfkill block bluetooth"
alias airpods="ble-on && sleep 1 && bluetoothctl connect D4:68:AA:80:CA:18 && pactl set-default-sink bluez_sink.D4_68_AA_80_CA_18.a2dp_sink"

# Process aliases
# ps aux | grep "bash" | tr -s ' ' | cut -d" " -f2 | kill -s 9
alias fkill="kill -s 9 --"
process() { eval "ps aux | grep -E 'USER|$1'"  | tac | fzf --height=7 --border=sharp | tr -s ' ' | cut -d' ' -f2 | tr -d '\n' | xclip -sel c; }

# Docker aliases
alias start-docker="sudo systemctl start docker"
alias dc="docker-compose"

# Other aliases
alias upgrade="sudo pacman -Syyu"
alias hst="history -w /dev/stdout | sort | uniq | fzf --border=sharp --height=20 | tr -d '\n' | xclip -sel c"
alias ll="ls -lhF"
alias lla="ls -lahF"
alias dotfiles="git -C ~/.dotfiles"
alias cpwd="pwd | tr -d '\n' | xclip -sel c"
alias reconf="~/.dotfiles/config.sh"
