#!/bin/bash
set -e

# Get the ID of the running container (if any)
containerId=`docker ps | awk -F " " '{print $1}'`

# Forcefully stop and remove the container using its ID
docker rm -f "$containerId"
