#!/bin/bash
set -e

# # Stop the running container (if any)
# echo "Fetch the container"
# containerId=$(docker ps | sed '1d' | awk -F ' ' '{print $1}')

# if [[ "$containerId" != "" ]]; then
#     echo "Stop the container"
#     docker stop "$containerId"
#     docker rm "$containerId"
# fi


# Stop the running container (if any)
echo "Fetching the running container ID..."
containerId=$(docker ps -q)

if [[ -n "$containerId" ]]; then
    echo "Stopping the container with ID: $containerId"
    docker stop "$containerId"
    echo "Removing the container with ID: $containerId"
    docker rm "$containerId"
else
    echo "No running container found."
fi 
