#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

#. ~/CodeLabs/Hochob/Main.sh

export LOGPID_PID=$$

LOCAL_PID="$1"
LOCAL_NAME="$2"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

echo $LOCAL_PID > $HOCHOB_SERVER_CONFIGURATION_PID/$LOCAL_NAME

# End of File
