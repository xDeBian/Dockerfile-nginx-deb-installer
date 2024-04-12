# Use Ubuntu 22.04 (Jammy) as the base image
FROM ubuntu:latest

# Install Nginx and wget
RUN apt-get update && \
    apt-get install -y  wget curl && \
    rm -rf /var/lib/apt/lists/*

# Download and install Nginx package
RUN wget https://nginx.org/packages/ubuntu/pool/nginx/n/nginx/nginx_1.24.0-1~jammy_amd64.deb && \
    dpkg -i nginx_1.24.0-1~jammy_amd64.deb && \
    rm nginx_1.24.0-1~jammy_amd64.deb

# Replace default Nginx configuration with a new server block listening on port 8080
COPY nginx.conf /etc/nginx/nginx.conf

# Change the index.html file
COPY index.html /usr/share/nginx/html/


# Expose  8080
EXPOSE 8080

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
