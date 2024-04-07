# Created by newuser for 5.8.1

# Loads the Version Control System into prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# Git branch details
zstyle ':vcs_info:git:*' formats '%b '

# Prompt
setopt PROMPT_SUBST
PROMPT='%F{cyan}%2~%f %F{green}${vcs_info_msg_0_}%f %F{blue})%f '
