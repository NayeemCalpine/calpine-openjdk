#!/bin/sh

SCRIPT_DIR=`dirname $0`
C_ORG=cubetiq
C_IMG=calpine-openjdk
C_TAG=11
C_ROOT=${C_ORG}/${C_IMG}:${C_TAG}

echo "Starting build for OpenJDK: ${C_ROOT}"
docker build -f $SCRIPT_DIR/Dockerfile  . -t ${C_ROOT}

echo "Publishing to DockerHub with ${C_ROOT}"
docker push ${C_ROOT}