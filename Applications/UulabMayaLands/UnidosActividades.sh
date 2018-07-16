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

# Unidos Actividades
LOCAL_PHRASE="Primero, escucharemos a un Ingeniero guapo e inteligente platicarnos \
              sobre la importancia de estudiar Ingenieria. \
              Despues pasaremos a nuestras mesas de trabajo donde personas \
              lindas y hermosas tanto de Unidos como de Intel te ayudaran a ensamblar \ 
              tu primera computadora, armaras y transformaras tu primer carro autonomo, 
              jugaras con distintos tipos de robots y para terminar con nuestra diversion, \
              jugaremos loteria. Deseo de todo corazon que todos Unidos se diviertan.\
              "

# =============================================================================
# Functions
# =============================================================================

# None

# =============================================================================
# Main
# =============================================================================

LogPid.sh $UNIDOS_PID $UNIDOS_NAME

AmikooVoice.sh spanish "$LOCAL_PHRASE"

# End of File
