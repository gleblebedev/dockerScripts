#!/bin/bash

docker build --progress plain -t ubuntu -f Dockerfile ./
docker run -it --mount type=bind,source=`git rev-parse --show-toplevel`,target=/dockerScripts --rm ubuntu bash
docker image rm ubuntu