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
LOCAL_PHRASE="Todos tenemos un lugar en el mundo, una misión en este hermoso camino que llamamos vida, \
              y cada vez que nos movemos, lo estremecemos y lo hacemos más grande. \
              Gracias Amigos por ser nuestra fuente de inspiración para buscar formar una sociedad incluyente \
              y sensible que una nuestros corazones y a través de experiencias generemos juntos empatía. \
              Gracias Aliados por permitirse desarrollar otras habilidades, alcanzar la plenitud, \
              experimentar otras realidades y tener una transformación personal. \
              Gracias Unidos por unirnos como personas con y sin discapacidad para complementarnos \
              y visualizar lo que podemos lograr si avanzamos Unidos, y así, transformamos juntas nuestras vidas. \
              Estamos hoy todos reunidos para devolver la conciencia al mundo. \
              Dispongamos a Compartir, Confiar y transformar. Es un honor tenerlos aquí con nosotros.\
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
