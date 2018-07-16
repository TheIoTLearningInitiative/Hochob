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

LOCAL_PHRASE[0]="¿Cuál es tu animal favorito?"
LOCAL_PHRASE[1]="¿Cuál es tu comida favorita?"
LOCAL_PHRASE[2]="¿Cuál es tu deporte favorito?"
LOCAL_PHRASE[3]="¿Como se llama tu aliado?"
LOCAL_PHRASE[4]="¿Como me llamo yo?"

# =============================================================================
# Functions
# =============================================================================

choosePhrase()
{
    rand=$[ $RANDOM % 50 ]
    LOCAL_PHRASE=${LOCAL_PHRASE[$rand]}
}

# =============================================================================
# Main
# =============================================================================

LogPid.sh $PASION_PID $PASION_NAME

choosePhrase

AmikooCommunication.sh "Amikoo" "Audio" "TR2D2AgainSoundBibleCom.mp3"
sleep .5
AmikooVoice.sh spanish "$LOCAL_PHRASE"
AmikooCommunication.sh "Amikoo" "Audio" "Stop"

# End of File
