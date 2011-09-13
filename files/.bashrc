
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
# Bash options
###############################################################################
export HISTCONTROL=ignoredups

. ~/.alias 

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi



