# bash
source "${HOME}/.bash_local"
source "${HOME}/.bash_alias"
source "${HOME}/.bash_function"
source "${HOME}/.bash_environment"
source "/etc/bash_completion"

# package manager
source "$HOME/.cargo/env"
source "$HOME/.rye/env"

# starship.rs
eval "$(starship init bash)"

# pyenv
eval "$(pyenv init -)"
