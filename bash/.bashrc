source $HOME/.bashrc.local
source $HOME/.bashrc.alias
source $HOME/.bashrc.functions

# rust
. "$HOME/.cargo/env"

# python
. "$HOME/.rye/env"

# golang
export PATH="$PATH:/usr/local/go/bin:$HOME/go/bin"
export GOPATH="$HOME/go"

# screen
export SCREENDIR=${HOME}/.screen

eval "$(starship init bash)"
