#!/bin/bash

echo "Argument passed to script: $1"

if [ "$1" = "-s" ]; then
    # Enter sleep mode
    echo "(In sleep/silent mode...)"
    sleep infinity
elif [ -t 0 ] ; then
    # Enter menu mode
    echo "(starting interactive shell)"
    # Start menu
    /app/run_scenarios.sh
else
    echo "(starting non-interactive shell)"
    # Start automatic run
    /app/auto.sh
fi
