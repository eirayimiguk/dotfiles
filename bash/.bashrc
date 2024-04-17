# bash
source "${HOME}/.bashrc.local"
source "/etc/bash_completion"

alias ls="ls -CF --color=auto"
alias ll="ls -lFh"
alias la="ls -Al"

export PATH="$HOME/bin:$PATH"

# keybase
# https://github.com/keybase/keybase-issues/issues/2798
export GPG_TTY=$(tty)

