#!/bin/bash

set -x

# =============================================================================
# Variables
# =============================================================================

. ~/CodeLabs/Hochob/Main.sh

export UNIDOS_PID=$$
export UNIDOS_NAME="Unidos"
export UNIDOS_PATH=$(readlink -f "$0")
export UNIDOS_DIRECTORY=$(dirname "$UNIDOS_PATH")

LOCAL_INSTITUTION=`Name.sh`
LOCAL_DEVICE="NohochTata"
LOCAL_VOLUME="1.0"
LOCAL_LANGUAGE=`Language.sh`
LOCAL_TTS_ENGINE="espeak"

LOCAL_PHRASE="Unidos de Guadalajara? Hola!"

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $UNIDOS_PID $UNIDOS_NAME

StreamText.sh "$LOCAL_DEVICE" "$LOCAL_LANGUAGE" "$LOCAL_TTS_ENGINE" \
              "$LOCAL_PHRASE"

# End of File
