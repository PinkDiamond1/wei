#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit
DOCKER_IMAGE=${DOCKER_IMAGE:-weicrypto/weid-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/weid docker/bin/
cp $BUILD_DIR/src/wei-cli docker/bin/
cp $BUILD_DIR/src/wei-tx docker/bin/
strip docker/bin/weid
strip docker/bin/wei-cli
strip docker/bin/wei-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
