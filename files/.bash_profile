
###############################################################################
# Globals
###############################################################################

export LANG=en_US.utf-8
export EDITOR=/usr/bin/vim
export CLICOLOR

# Enable $HOME/local
export PATH=$HOME/local/bin:$PATH
export C_INCLUDE_PATH=$HOME/local/include
export CPLUS_INCLUDE_PATH=$HOME/local/include
export OBJC_INCLUDE_PATH=$HOME/local/include
export LD_LIBRARY_PATH=$HOME/local/lib64:$HOME/local/lib
export DYLD_LIBRARY_PATH=$HOME/local/lib

# VXL
export VXL_DIR=$HOME/local/share/vxl/cmake

# Python stuff
export PYTHONPATH=$HOME/pro
export NUMERIX=numpy


# MacPorts Installer addition on 2010-12-24_at_09:36:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

