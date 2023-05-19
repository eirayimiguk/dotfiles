source $HOME/.bashrc.local # Credentials
source $HOME/.bashrc.alias # Alias

# rust
. "$HOME/.cargo/env"

# golang
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
export GOPATH="$HOME/go"

# screen
export SCREENDIR=${HOME}/.screen

eval "$(starship init bash)"
