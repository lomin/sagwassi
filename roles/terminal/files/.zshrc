export LC_ALL=de_DE.UTF-8
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow'
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme
