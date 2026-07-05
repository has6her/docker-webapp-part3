#!/bin/bash
echo "Pulling latest image from Docker Hub..."
docker pull has6her/hasher-webapp:latest

echo "Stopping any existing container..."
docker stop mywebapp
docker rm mywebapp

echo "Running new container..."
docker run -d -p 80:80 --name mywebapp has6her/hasher-webapp:latest

echo "Deployment complete! App running on port 80."