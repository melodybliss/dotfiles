
# MacPorts Installer addition on 2010-11-16_at_18:17:54: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
EDITOR=vi
export EDITOR

##
# Your previous /Users/melody/.profile file was backed up as /Users/melody/.profile.macports-saved_2010-11-30_at_20:41:28
##

# MacPorts Installer addition on 2010-11-30_at_20:41:28: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PATH=$HOME/bin:$PATH

if [ -x ~/.alias.sh ]; then
	. ~/.alias.sh
fi
