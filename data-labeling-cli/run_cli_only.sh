#!/bin/bash

docker build -t data-label-cli -f Dockerfile .
# docker build -t data-label-cli --platform=linux/arm64/v8 -f Dockerfile .


docker run -it --rm --name data-label-cli data-label-cli