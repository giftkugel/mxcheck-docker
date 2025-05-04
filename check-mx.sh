#!/bin/bash

ME=$(basename "$0")

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Please provide a domain to check."
    echo "Use ./$ME [domain]"
    exit 1
fi

CONTAINER_NAME=mxcheck-docker

if docker inspect $CONTAINER_NAME > /dev/null 2>&1; then
    docker run --rm $CONTAINER_NAME --no-prompt --service $1
else
    echo "The container $CONTAINER_NAME does not exist. Run ./build-image.sh first!"
    exit 2
fi
