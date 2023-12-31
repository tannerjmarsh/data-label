#!/bin/bash

set -e

# Create the network if we don't have it yet
docker network inspect data-labeling-network >/dev/null 2>&1 || docker network create data-labeling-network

# Build the image based on the Dockerfile
docker build -t tanner3030/data-label-cli -f ../data-labeling-cli/Dockerfile ../data-labeling-cli
# docker push tanner3030/data-label-cli

# remove existing docker volumes if desired
if [[ "$1" == "--fresh" ]]; then
    rm -r docker-volumes
fi

# docker pull tanner3030/data-label-cli
 
# Run All Containers
docker compose run --rm --service-ports data-label-cli