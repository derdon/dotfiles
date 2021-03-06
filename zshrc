# enable completion
autoload -U compinit && compinit

# enable color support (useful for fancy prompts)
autoload -U colors && colors

# include useful VCS information in the prompt
autoload -Uz vcs_info

source ~/.zsh/options
source ~/.zsh/aliases
source ~/.zsh/functions

HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=12000

precmd() {
  psvar=()
  vcs_info
  [[ -n $vcs_info_msg_0_ ]] && psvar[1]="$vcs_info_msg_0_"
}

trailing_color=$( [[ `whoami` == 'root' ]] && echo 'red' || echo 'green' )
PS1="%F{magenta}%2~%f%(1v.%F{green}%1v%f.)%F{$trailing_color}%#%f "
