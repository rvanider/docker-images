#!/bin/bash
if [ "$1" != "--force" ]; then
  OPTS=-h
  echo Cleanup docker volumes: remove unused volumes.
  echo Usage: docker-cleanup-volumes.sh [--force] [--dry-run] [--verbose]
  echo   --force:       perform the actual deletion.
  echo   -n, --dry-run: dry run: display what would get removed.
  echo   -v, --verbose: verbose output.
  exit 1
fi
IMAGE=martin/docker-cleanup-volumes
SOCKPATH=/var/run/docker.sock
DOCKERPATH=/var/lib/docker
docker run -v $SOCKPATH:$SOCKPATH -v $DOCKERPATH:$DOCKERPATH --rm $IMAGE

