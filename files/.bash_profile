
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
export DYLD_LIBRARY_PATH=$HOME/local/lib64:$HOME/local/lib #:/usr/local/lib

# Python stuff
export PYTHONPATH=/Library/Python/2.7/site-packages
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:${PYTHONPATH}
export PYTHONPATH=$HOME/local/lib/python2.7/site-packages/:${PYTHONPATH}
export PYTHONPATH=$HOME/pro/OpenSfM/:${PYTHONPATH}
export PYTHONPATH=$HOME/pro/mapillary_ip/:${PYTHONPATH}
export PYTHONPATH=$HOME/pro/mapillary_vision:${PYTHONPATH}
export PYTHONPATH=$HOME/pro/mapillary_sfm/:${PYTHONPATH}
export PYTHONPATH=$HOME/pro/pika/:${PYTHONPATH}


# Postgress
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin

# rvm
export PATH="$PATH:$HOME/.rvm/bin"

# Chef
export BOXEN_CHEF_USER=paulinus

export MAPILLARY_CLUSTER_DIR=/Users/paulinus/pro/mapillary_cluster


if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
