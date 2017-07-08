alias rsync='rsync -P --recursive'
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
alias cower='cower -t ~/src --color=always'
alias netlisten='lsof -i -P | grep LISTEN'
alias paclog='tail -n 40 /var/log/pacman.log'
alias rmnotneeded='pacman -Rscn $(pacman -Qdtq)'
alias fdisk="sudo fdisk"
alias close="i3lock -c 000000; systemctl suspend"
alias c="clear" 

# tmux alias ----- {
alias tmuxn="tmux new -s $1"
alias tmuxa="tmux attach -t $1"
