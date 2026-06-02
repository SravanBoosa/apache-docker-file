FROM ubuntu
RUN apt update
RUN apt install -y apache2
COPY index.html /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
