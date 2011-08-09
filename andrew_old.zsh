
# ============================
# Standard Stuff

alias ls='ls --color'
alias l='ls'
alias ll='ls -la'

alias py='python'
alias sml='rlwrap sml'

# ============================
# START OF OH-MY-ZSH

bindkey '^[[Z' reverse-menu-complete
bindkey ' ' magic-space # also do history expansion on space


## Command history configuration

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_dups # ignore duplication command history list
setopt share_history # share command history data

setopt hist_verify
setopt inc_append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_space

setopt SHARE_HISTORY
setopt APPEND_HISTORY


# Changing/making/removing directory
setopt auto_name_dirs
setopt auto_pushd
setopt pushd_ignore_dups

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'


# END OF OH-MY-ZSH
# ============================

