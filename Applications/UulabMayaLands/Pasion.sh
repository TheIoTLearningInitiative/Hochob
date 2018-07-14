#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export PASION_PID=$$
export PASION_NAME="Pasion"
export PASION_PATH=$(readlink -f "$0")
export PASION_DIRECTORY=$(dirname "$PASION_PATH")

# Unidos
LOCAL_INSTITUTION_NAME=`Pasion`
LOCAL_EVENT_NAME_SPANISH="Visital Intel 2018"
LOCAL_PHRASE="Hola \
              Mundo"

LOCAL_LANGUAGE[0]="spanish"

# =============================================================================
# Functions
# =============================================================================

chooseLanguage()
{
    rand=$[ $RANDOM % 2 ]
    LOCAL_LANGUAGE=${LOCAL_LANGUAGE[$rand]}
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $PASION_PID $PASION_NAME



# End of File
