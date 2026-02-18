autoload -Uz compinit

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

if [[ -n ${ZDOTDIR:-$HOME}/.zcompdump(#qN.m-1) ]]; then
  compinit -C
else
  compinit
fi

[[ -f ~/.zsh/secrets.zsh ]] && source ~/.zsh/secrets.zsh
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

# Sichereres Laden von Completions
(( $+commands[kubectl] )) && source <(kubectl completion zsh)
(( $+commands[helm] ))    && source <(helm completion zsh)
(( $+commands[helmfile] )) && source <(helmfile completion zsh)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

eval "$(starship init zsh)"

[[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && \
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh