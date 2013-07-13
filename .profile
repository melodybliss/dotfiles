# Set the various PATHs
X11_PATH=/opt/X11/bin
LOCAL_PATH=/usr/local/bin
SYS_PATH=/usr/bin:/bin:/usr/sbin:/sbin
ARM_PATH=$HOME/pebble-dev/arm-cs-tools/bin
PEBBLE_PATH=$HOME/pebble-dev/PebbleSDK-1.12/Pebble/sdk

# Set the initial PATH
export PATH=${PEBBLE_PATH}:${ARM_PATH}:${LOCAL_PATH}:${SYS_PATH}:${X11_PATH}

# MacPorts Installer addition on 2010-11-16_at_18:17:54: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
EDITOR=vi
export EDITOR

export PATH=$HOME/bin:$PATH

if [ -x ~/.alias.sh ]; then
	. ~/.alias.sh
fi
