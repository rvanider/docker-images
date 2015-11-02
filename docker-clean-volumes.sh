#!/bin/bash
if [ "$1" != "--force" ]; then
  OPTS=--dry-run
  echo Usage: docker-cleanup-volumes.sh [--force] [--dry-run] [--verbose]
fi
IMAGE=martin/docker-cleanup-volumes
SOCKPATH=/var/run/docker.sock
DOCKERPATH=/var/lib/docker
docker run -v $SOCKPATH:$SOCKPATH -v $DOCKERPATH:$DOCKERPATH --rm $IMAGE $OPTS

