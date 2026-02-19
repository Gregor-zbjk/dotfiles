# Zsh Completions
# Versuch zsh-autocomplete zu laden
if [[ -f /usr/local/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]]; then
    # zsh-autocomplete
    source /usr/local/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh
else
    # Fallback: classic compinit
    autoload -Uz compinit

    if type brew &>/dev/null; then
        FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    fi

    if [[ -f ${ZDOTDIR:-$HOME}/.zcompdump ]]; then
        compinit -C
    else
        compinit
    fi
fi

# Source custom zsh files
[[ -f ~/.zsh/secrets.zsh ]] && source ~/.zsh/secrets.zsh
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh
[[ -f ~/.zsh/auto-completions.zsh ]] && source ~/.zsh/auto-completions.zsh


# Tool completions
(( $+commands[kubectl] )) && source <(kubectl completion zsh)
(( $+commands[helm] ))    && source <(helm completion zsh)
(( $+commands[helmfile] )) && source <(helmfile completion zsh)

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# Starship prompt
eval "$(starship init zsh)"

# Zsh plugins
[[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && \
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh