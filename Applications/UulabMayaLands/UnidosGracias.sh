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

# Unidos Buenos Dias
LOCAL_PHRASE="Admiro su vision de la vida. Todos tenemos un lugar en el mundo, \
              una misión en este hermoso camino que llamamos vida,\
              y cada vez que nos movemos, lo estremecemos y lo hacemos mas grande. \
              Estamos hoy todos reunidos para devolver la conciencia al mundo. \
              Vamos a Compartir, Confiar y transformar. \
              Gracias Aliados por permitirse desarrollar otras habilidades, alcanzar la plenitud, \
              experimentar otras realidades y tener una transformación personal. \
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
