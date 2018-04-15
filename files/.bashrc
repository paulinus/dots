
###############################################################################
# Set a fancy prompt
###############################################################################

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local        BLUE="\[\e[0;34m\]"
  local         RED="\[\e[0;31m\]"
  local   LIGHT_RED="\[\e[1;31m\]"
  local       GREEN="\[\e[0;32m\]"
  local LIGHT_GREEN="\[\e[1;32m\]"
  local      YELLOW="\[\e[1;33m\]"
  local       WHITE="\[\e[1;37m\]"
  local  LIGHT_GRAY="\[\e[0;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR='\[\033]0;\u@\h:\w\007\]'
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

  PS1="${TITLEBAR}\
$LIGHT_GREEN\$?\
$LIGHT_RED\u@\h:$YELLOW\w$LIGHT_GREEN\$(parse_git_branch)\
$LIGHT_GREEN\$ $LIGHT_GRAY"
  PS2='> '
  PS4='+ '
}
proml


###############################################################################
# Share bash history between terminals
###############################################################################

export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


###############################################################################
# Bash options
###############################################################################

. ~/.alias 

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

if hash brew 2>/dev/null; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi



[ -f ~/.fzf.bash ] && source ~/.fzf.bash
