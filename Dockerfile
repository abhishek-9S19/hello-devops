# Use Nginx as web server
FROM nginx:alpine

# Copy your index.html into nginx default location
COPY index.html /usr/share/nginx/html/index.html

