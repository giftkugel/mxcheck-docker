#!/bin/bash

me=$(basename "$0")

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Please provide a domain to check."
    echo "Use ./$me [domain]"
    exit 1
fi

container_name=mxcheck-docker

if docker inspect $container_name > /dev/null 2>&1; then
    docker run --rm $container_name --no-prompt --service $1
else
    echo "The container $container_name does not exist. Run ./build-image.sh first!"
    exit 2
fi