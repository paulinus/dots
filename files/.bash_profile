
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
export DYLD_LIBRARY_PATH=$HOME/local/lib

# VXL
export VXL_DIR=$HOME/local/share/vxl/cmake/

# Python stuff
export PYTHONPATH=$HOME/local/lib/python2.7/site-packages/
export PYTHONPATH=$HOME/local/lib/python2.7/dist-packages/:$PYTHONPATH
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
export NUMERIX=numpy

# CUDA
#export PATH=/usr/local/cuda/bin:$PATH
#export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

# MySQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/:$DYLD_LIBRARY_PATH
export PATH=/usr/local/mysql/bin:$PATH


if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

