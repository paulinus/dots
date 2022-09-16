
###############################################################################
# Globals
###############################################################################

echo "RUNNING .bash_profile"

export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8
export EDITOR=/usr/bin/vim
export CLICOLOR

export PATH=/usr/local/bin:$PATH

# Enable $HOME/local
export PATH=$HOME/local/bin:$PATH
export C_INCLUDE_PATH=$HOME/local/include:/usr/local/include
export CPLUS_INCLUDE_PATH=$HOME/local/include:/usr/local/include
export OBJC_INCLUDE_PATH=$HOME/local/include
export LD_LIBRARY_PATH=$HOME/local/lib64:$HOME/local/lib:/usr/local/lib
export DYLD_LIBRARY_PATH=$HOME/local/lib64:$HOME/local/lib

# Python stuff
export PATH=$HOME/Library/Python/2.7/bin:$PATH

# Postgress
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# nvm
# export NVM_DIR="$HOME/.nvm"
# . "/usr/local/opt/nvm/nvm.sh"

# Node.js
export PATH="node_modules/.bin:$PATH"

# Mapillary
. ~/local/bin/setup_mapillary_env_vars.sh


if [ -f ~/.secret_bash_profile ]; then
  . ~/.secret_bash_profile
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

