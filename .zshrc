autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='%F{red}'\$vcs_info_msg_0_' '
PROMPT='💜💙💚🦄🌈💛🧡❤️  %F{cyan}%~ %F{default}\$ '
zstyle ':vcs_info:git:*' formats '%b'
