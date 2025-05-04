#!/bin/bash

ME=$(basename "$0")

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Please provide a domain to check."
    echo "Use ./$ME [domain]"
    exit 1
fi

docker run --rm -ti  drwetter/testssl.sh --mx $1