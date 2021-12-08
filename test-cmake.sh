#!/bin/bash

docker build --progress plain -t test_cmake -f Dockerfile ./
docker run -it --mount type=bind,source=`git rev-parse --show-toplevel`,target=/dockerScripts --rm test_cmake bash
docker image rm test_cmake