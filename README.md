# Part 3 - Docker Container Deployment

## Overview
This repository contains the Docker container deployment automation for 
B9IS121 Assessment 1 (Automated Container Deployment and Administration in the Cloud).

## Files
- **Dockerfile** - Builds a lightweight nginx-based image serving a static HTML page
- **index.html** - Sample static web application
- **deploy.sh** - Automation script that pulls the latest image from Docker Hub and deploys it as a container

## How it works
1. The Dockerfile uses `nginx:alpine` as the base image
2. It copies `index.html` into the nginx web root
3. The image is built and pushed to Docker Hub: `has6her/hasher-webapp:latest`
4. The `deploy.sh` script automates deployment: it pulls the latest image, 
   removes any existing container, and runs a new one on port 80

## Build and Run Locally
docker build -t hasher-webapp .
docker run -d -p 8080:80 --name mywebapp hasher-webapp

Visit http://localhost:8080 to view the app.

## Deploy on Server
bash deploy.sh

This pulls the image from Docker Hub and runs it automatically on port 80.

## Docker Hub Image
https://hub.docker.com/r/has6her/hasher-webapp