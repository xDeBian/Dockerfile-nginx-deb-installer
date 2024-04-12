### **NGINX DOCKERFILE FOR DEBIAN PACKAGE INSTALLATION**
This repository contains a Dockerfile that builds an Nginx Docker image based on Ubuntu 22.04 (Jammy) with Nginx version 1.24 installed from a Debian package. It also includes a custom Nginx configuration and an index.html file for serving web content.

#### FeaturesFeatures
Installs Nginx version 1.24 from a Debian package.
Uses a custom Nginx configuration file to define a server block listening on port 8080.
Provides an index.html file to serve as the default web page.
Usage
Clone this repository:

bash Copy code

    git clone https://github.com/xDeBian/Dockerfile-nginx-deb-installer.git

##### Build the Docker image:
bash Copy code
```bash
docker build -t dzneladze_nginx_deb .
```

##### Run a Docker container based on the image:
bash
Copy code
```bash
docker run -d -p 8080:8080  dzneladze_nginx_deb
```
This will start Nginx in the Docker container, listening on port 8080.

##### Access the Nginx server in your browser:

Open your web browser and navigate to `http://localhost:8080` to view the default web page served by Nginx.
