#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull docker.io/vijesh89/petclinic:latest

# Run the Docker image as a container
docker run -d -p 8080:8080 vijesh89/petclinic:latest