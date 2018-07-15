#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export EMPATIA_PID=$$
export EMPATIA_NAME="Empatia"
export EMPATIA_PATH=$(readlink -f "$0")
export EMPATIA_DIRECTORY=$(dirname "$EMPATIA_PATH")

# Unidos
LOCAL_INSTITUTION_NAME=`Empatia`
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

LogPid.sh $EMPATIA_PID $EMPATIA_NAME



# End of File
