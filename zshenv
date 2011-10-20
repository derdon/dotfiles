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

# for the binaries from the Go project
PATH="${PATH}:/Users/simon/repos/go/bin"

export PATH
