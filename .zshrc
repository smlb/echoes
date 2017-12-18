HIST_STAMPS="mm/dd/yyyy"

source $HOME/.zsh/*.zsh
source $HOME/.zsh/autopairs.zsh 
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zstyle '*:processes-names' command 'ps -e -o comm='
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*' file-sort modification reverse
zstyle ':completion:*:correct:*'       original true

eval $(dircolors ~/.dircolors)
autoload -U colors && colors

zstyle ':completion:*:default'         list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:history-words'   menu yes
zstyle ':completion:*'                 matcher-list 'm:{a-z}={A-Z}' 

autoload up-line-or-beginning-search
autoload down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

export EDITOR=vim

bindkey -v 
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey -M vicmd 'k' up-line-or-beginning-search
bindkey "^[[3~" delete-char
bindkey "^[[5~" up-line-or-history
bindkey "^[[6~" down-line-or-history
bindkey "\e[A" up-line-or-beginning-search
bindkey "\e[B" down-line-or-beginning-search
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^B" delete-word

eval $(dircolors ~/.dircolors)
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=$HISTSIZE

PROMPT=" %{$fg_bold[blue]%}%~ %{$reset_color%}$ "

#  vim: set ft=zsh ts=4 sw=4 tw=500 et :
