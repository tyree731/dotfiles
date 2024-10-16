# uncomment once homebrew installed
# eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls="ls -l --color=auto"
export EDITOR="emacs -nw"
export VISUAL="emacs -nw"
export HISTIGNORE="logout:[bf]g:exit:shutdown:init"
export HISTSIZE=5000
export LANG="en_AU.UTF-8"

alias docker-compose="docker compose"

# uncomment once starship installed
# eval "$(starship init zsh)"

# rust configuration
# uncomment once rust installed
# . "$HOME/.cargo/env"

# goenv configuration
# uncomment once goenv installed
# export GOENV_ROOT="$HOME/.goenv"
# export PATH="$GOENV_ROOT/bin:$PATH"
# eval "$(goenv init -)"
# export PATH="$GOROOT/bin:$PATH"
# export PATH="$PATH:$GOPATH/bin"

export PATH="/Users/styree/.local/bin:$PATH"

# nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
