HISTFILE=~/.cache/zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt append_history
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt complete_in_word
setopt correct
setopt glob_dots
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt inc_append_history
setopt interactive_comments
setopt mark_dirs
setopt nomatch
setopt share_history
unsetopt beep
unsetopt case_glob
unsetopt flow_control
unsetopt hist_beep

autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"

alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias ls="ls --color -h --group-directories-first"
alias grep="grep --color=auto"

eval "$(starship init zsh)"
