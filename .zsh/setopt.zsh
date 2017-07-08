setopt VI
setopt NO_BEEP
setopt correctall
setopt always_last_prompt
setopt always_to_end
setopt auto_list
setopt auto_menu
setopt auto_param_keys
setopt auto_param_slash
setopt auto_remove_slash
setopt no_bash_auto_list
setopt complete_aliases
setopt complete_in_word
setopt glob_complete
setopt hash_list_all
setopt list_ambiguous
setopt no_list_beep
setopt list_packed
setopt no_list_rows_first
setopt list_types
setopt menu_complete
setopt rec_exact
setopt append_history
setopt extended_history


man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
