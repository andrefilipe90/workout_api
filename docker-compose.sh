#!/bin/bash
sudo docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $(pwd):/app \
    -w /app \
    docker/compose:1.29.2 "$@"
