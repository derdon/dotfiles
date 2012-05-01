export WORKON_HOME="~/venvs"

# Setting PATH for Python 3.1
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.1/bin:${PATH}"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# to make homebrew happy
PATH="/usr/local/bin:${PATH}" 

# to make macports happy (I hate doing this btw)
PATH="/opt/local/bin:/opt/local/sbin:${PATH}"

# to include MacTex's binaries in PATH
PATH="${PATH}:/usr/local/texlive/2010/bin/x86_64-darwin"

# set some env vars for go
export GOROOT=$HOME/repos/go/go
EXTGO="${HOME}/repos/go/3rdparty"
OWNGO="${HOME}/repos/go/own"
export GOPATH="${EXTGO}:${OWNGO}"

# for the binaries from the Go project
PATH="${PATH}:${GOROOT}/bin:${EXTGO}/bin:${OWNGO}/bin"

GAE_PATH="${HOME}/Downloads/google_appengine"

PATH=${GAE_PATH}:${PATH}

export PATH

export LANG="de_DE.utf8"
