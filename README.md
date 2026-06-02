# Apache Docker Project (Ubuntu + Apache2 + Custom HTML)

## Overview

This project demonstrates how to build a Docker container using **Ubuntu**, install **Apache2**, and deploy a **custom HTML web page**. The container automatically starts Apache2 when launched and serves a custom web page on port 80.

---

## Objective

- Create a Docker image based on Ubuntu
 Install Apache2 web server
- Configure Apache2 to start automatically inside the container
- Replace default Apache page with a custom HTML page
- Run the application using Docker
- Push the project to Github
mkdir docker-apache-file
cd docker-apche-file

vi index.html
cat index.html
“welcome to Apache2 Running inside”

vi Dockerfile
FROM ubuntu
RUN apt update
RUN apt install -y apache2
COPY index.html /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUNDS

docker build . –t apache-docker-file-demo
docker images
docker run -it -d -p 82:80 --name docker-file-demo apache-docker-file-demo:latest
docker exec -it docker-file-demo bash
service apache2 status



---

## Project Structure

User Browser
     |
     v
Docker Host Machine
     |
     v
Apache Docker Container
(Ubuntu + Apache2 + index.html)
     |
     v
Port Mapping (82 → 80)












