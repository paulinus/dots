
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
export MAPILLARY_CLUSTER_DIR=$HOME/pro/mapillary_cluster
export PATH="$PATH:$MAPILLARY_CLUSTER_DIR/bin"
export MAP_ENV=development

# Brew
export HOMEBREW_GITHUB_API_TOKEN=b793d073e5c5f4c3e72f2819cf0296c505b72ed3


if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
