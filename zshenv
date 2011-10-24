# Setting PATH for Python 3.1
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.1/bin:${PATH}"

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

# to make homebrew happy
PATH="/usr/local/bin:${PATH}" 

# to include MacTex's binaries in PATH
PATH="${PATH}:/usr/local/texlive/2010/bin/x86_64-darwin"

# set some env vars for go
export GOROOT=$HOME/repos/cloneonly/go
export GOPATH=$GOROOT
export GOBIN=$GOROOT/bin
export GOARCH=386
# XXX: change this value after switching to a different OS!
export GOOS=darwin

# for the binaries from the Go project
PATH="${PATH}:${GOBIN}"

GAE_PATH="${HOME}/Downloads/google_appengine"

PATH=${GAE_PATH}:${PATH}

export PATH
