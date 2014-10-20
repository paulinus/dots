
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
export C_INCLUDE_PATH=$HOME/local/include
export CPLUS_INCLUDE_PATH=$HOME/local/include
export OBJC_INCLUDE_PATH=$HOME/local/include
export LD_LIBRARY_PATH=$HOME/local/lib64:$HOME/local/lib

# Python stuff
export PYTHONPATH=$HOME/local/lib/python2.7/site-packages/
export PYTHONPATH=$HOME/local/lib/python2.7/dist-packages/:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH


if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

