if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/opt/homebrew/bin/brew shellenv)
end

#
# File: config.fish
# Author: found-it
#

# Aliases
# TODO: Do this more fish-like

# Single letters
alias n='nerdctl'
alias c='chainctl'
alias k='kubecolor'

# Kubernetes
alias kc='kubecolor'
alias wk='watch -c kubecolor --force-colors'
alias kim='kubectl get pods -o custom-columns=CONTAINER:.spec.containers[0].name,IMAGE:.spec.containers[0].image'

# File listing
alias ls='eza --icons'
alias lsg='eza --long --header --icons --git'
alias lst='eza --icons --tree'
alias lsi='eza --icons --long --octal-permissions --header'
alias cat='bat -p'

if command -q starship
    starship init fish | source
end
