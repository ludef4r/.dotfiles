# Created by newuser for 5.8.1

# Loads the Version Control System into prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Git branch details
zstyle ':vcs_info:git:*' formats '%b '

# Prompt
setopt PROMPT_SUBST
PROMPT='%F{cyan}%2~%f %F{green}${vcs_info_msg_0_}%f %F{blue})%f '

# Search for specific commands
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

bindkey '^[[1;5A' history-search-backward
bindkey '^[[1;5B' history-search-forward

# Case insensitive completion
autoload -U compinit &&  compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

alias  ls='ls --color=auto'
setxkbmap us

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
