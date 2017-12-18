alias rsync='rsync -P --recursive'
alias rssh='rsync -P -e ssh'
alias ls='ls --classify --tabsize=0 --literal --color=auto --human-readable'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias less='less --quiet'
alias df='df --human-readable'
alias free='free -h'
alias gitmaster='git push -u origin master && echo " (╯°□°）╯︵ WTF DID YOU PUSH BRO?"'
alias grep='grep --color=auto'
alias dmesg='dmesg -H'
alias cower='cower -t ~/src/pkg --color=always'
alias fdisk="sudo fdisk"
alias close="i3lock -c 000000; systemctl suspend"
alias c="clear" 
alias x="startx"
alias vi="vim"
alias sock="ssh -D 1080 -f -C -q -N -p 1973 debian"
alias dockerdd="systemctl start docker"
alias proxy="export all_proxy=socks5://localhost:1080"
alias night="xset -dpms; xset s off; sleep 3h; systemctl poweroff"
alias caps="xmodmap -e 'clear Lock' -e 'keysym Escape = Caps_Lock'"

# tmux alias ----- {
alias tmuxn="tmux new -s $1"
alias tmuxa="tmux attach -t $1"
# ------- }
