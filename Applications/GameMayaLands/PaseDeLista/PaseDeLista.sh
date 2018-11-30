#!/bin/sh

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PASEDELISTA_PID=$$
export PASEDELISTA_PATH=$(readlink -f "$0")
export PASEDELISTA_BASEDIR=$(dirname "$SCRIPT")
export PASEDELISTA_BASEDIR="$( cd "$(dirname "$0")" ; pwd -P )"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

cd $PASEDELISTA_BASEDIR
python PaseDeLista.py

# End of File
