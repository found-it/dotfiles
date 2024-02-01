#
# File: config.fish
# Author: found-it
#

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

# Set up environment variables
fish_add_path $HOME/.local/bin

# TODO: Use GOPATH or GOBIN
fish_add_path $HOME/go/bin

# TODO: Only run if brew exists
if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/opt/homebrew/bin/brew shellenv)
end


if command -q starship
    starship init fish | source
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/james/.google-cloud-sdk/path.fish.inc' ]; . '/Users/james/.google-cloud-sdk/path.fish.inc'; end
