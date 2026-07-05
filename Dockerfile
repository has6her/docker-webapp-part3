# Base image - lightweight web server
FROM nginx:alpine

# Copy our HTML file into nginx's default web folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (default HTTP port)
EXPOSE 80

# Nginx starts automatically, no need for CMD