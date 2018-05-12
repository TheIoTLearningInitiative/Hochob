#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export AMIKOOAVAILABLE_PID=$$

LOCAL_COMMAND="$1"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

if [ -z "$1" ]
then
    cat $HOCHOB_SERVER_CONFIGURATION_AMIKOOAVAILABLE
else
    echo $LOCAL_COMMAND > $HOCHOB_SERVER_CONFIGURATION_AMIKOOAVAILABLE
fi

# End of File
