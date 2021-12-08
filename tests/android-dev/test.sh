#!/bin/bash

mkdir ./scripts
cp ../../scripts/install-android-dev.sh ./scripts/
docker build --progress plain -t android-dev -f Dockerfile ./
docker run -it --mount type=bind,source=`git rev-parse --show-toplevel`,target=/dockerScripts --rm android-dev bash
docker image rm android-dev