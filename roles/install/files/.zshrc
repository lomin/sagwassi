export LC_ALL=de_DE.UTF-8
export PATH="/usr/local/sbin:$PATH"
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
