eval "$(/opt/homebrew/bin/brew shellenv)"

# goenv configuration
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$GOENV_ROOT/shims:$PATH"
eval "$(goenv init -)"

alias ls="ls -l --color=auto"
export EDITOR="emacs -nw"
export VISUAL="emacs -nw"
export HISTIGNORE="logout:[bf]g:exit:shutdown:init"
export HISTSIZE=5000
export LANG="en_AU.UTF-8"

# pyenv/pipenv configuration
export PIPENV_VENV_IN_PROJECT=1
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

alias docker-compose="docker compose"

eval "$(starship init zsh)"
#source /opt/homebrew/opt/zsh-git-prompt/zshrc.sh
#PROMPT='%F{cyan}%~%f:$(git_super_status):$ '

# rust configuration
. "$HOME/.cargo/env"

# poetry configuration
export PATH="/Users/styree/.local/bin:$PATH"

# nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# zsh completions
mkdir -p ~/.zsh/completion
fpath=(~/.zsh/completion $fpath)
autoload -U compinit
compinit
