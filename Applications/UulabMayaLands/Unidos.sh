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

# Unidos
LOCAL_INSTITUTION_NAME=`Unidos`
LOCAL_EVENT_NAME_SPANISH="Visital Intel 2018"
LOCAL_PHRASE="Bienvenidos Unidos.\
              Todos tenemos un lugar en el mundo, una misión en este hermoso camino que llamamos vida.\
              Platica, Briko, Loteria, Mesa Robots, Armado Computadoras.\
              Cada vez que te mueves, estremeces al mundo. Porque la unica forma de ser grande.\
              Es tiempo de devolverle la grandeza.
              Comparte, Confia, Transforma. Devuelve conciencia al mundo."

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

LogPid.sh $UNIDOS_PID $UNIDOS_NAME



# End of File
