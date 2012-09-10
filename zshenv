export WORKON_HOME="~/venvs"

export SHELL="/usr/bin/zsh"

# I don't know why, but for any reason /sbin isn't in $PATH by default.
# Let's fix this!
PATH="/sbin:${PATH}"

# set some env vars for go
export GOROOT=$HOME/repos/go/go
EXTGO="${HOME}/repos/go/3rdparty"
OWNGO="${HOME}/repos/go/own"
export GOPATH="${EXTGO}:${OWNGO}"

# for the binaries from the Go project
PATH="${PATH}:${GOROOT}/bin:${EXTGO}/bin:${OWNGO}/bin"

export PATH

export LC_ALL=LANG="en_US.utf8"
