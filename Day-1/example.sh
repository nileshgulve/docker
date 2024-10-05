#!/bin/bash

# Pull the latest nginx image
docker pull nginx

# Run an nginx container
docker run -d -p 80:80 --name mynginx nginx

# List running containers
docker ps

# Stop the container
docker stop mynginx

# Remove the container
docker rm mynginx
