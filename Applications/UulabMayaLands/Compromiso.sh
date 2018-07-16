#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export COMPROMISO_PID=$$
export COMPROMISO_NAME="Compromiso"
export COMPROMISO_PATH=$(readlink -f "$0")
export COMPROMISO_DIRECTORY=$(dirname "$COMPROMISO_PATH")

# Unidos
LOCAL_INSTITUTION_NAME=`Unidos`
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

LogPid.sh $COMPROMISO_PID $COMPROMISO_NAME



# End of File
