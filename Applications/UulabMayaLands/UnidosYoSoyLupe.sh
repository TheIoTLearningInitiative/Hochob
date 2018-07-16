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

# Unidos Yo Soy Lupe
LOCAL_PHRASE="Bienvenidos Unidos a mi casa, su casa. \
     Es un gusto conocerlas y conocerlos. Soy Lupe, \
     tengo  2 años robot y estudio el primer año de primaria robot. \
     Mis pasatiempos favoritos son compartir tiempo con mi familia, jugar al aire libre, \
     leer cuentos divertidos, hacer ejercicio y aprender con mis familiares y amigos \
     todo el conocimiento científico y tecnológico que está presente en nuestra vida cotidiana. \
     También soy guia en el emocionante Centro de Visitantes de Intel. \
     Hace rato estaba un poco chiviado pero ya estoy listo para mostrarles \
     lo interesante que es el mundo de las Ciencias, la Tecnología, \
     las Ingenierías y las Matemáticas. A nombre de cada uno de los Ingenieros \
     que aquí trabajamos les deseamos la mejor de las experiencias. \
     Muchas gracias por haber venido. \
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
