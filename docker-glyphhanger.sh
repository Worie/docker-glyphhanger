#!/bin/bash

# check if docker is installed
if ! (command -v docker >> /dev/null)
then
    echo "docker command not found!";
    exit 1;
fi

# check if docker image exists
if !(docker image ls | grep wopolow/glyphhanger >> /dev/null)
then
    docker pull wopolow/glyphhanger
fi

docker container run --rm -v $(pwd):/hwd wopolow/glyphhanger bash && glyphhanger "$@"