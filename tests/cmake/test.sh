#!/bin/bash

export BUILDKIT_STEP_LOG_MAX_SIZE=1073741824

mkdir ./scripts
cp ../../scripts/install-cmake.sh ./scripts/
docker build --progress plain -t test_cmake -f Dockerfile ./
docker run -it --mount type=bind,source=`git rev-parse --show-toplevel`,target=/dockerScripts --rm test_cmake bash
docker image rm test_cmake