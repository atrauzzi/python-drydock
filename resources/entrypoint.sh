#!/usr/bin/env bash

if [ ! -f $PYTHONUSERBASE/drydock/pip-selfcheck.json ]; then
    echo "Initializing your local development virtualenv..."
    virtualenv $PYTHONUSERBASE/drydock
fi

source "$PYTHONUSERBASE/drydock/bin/activate"

$@