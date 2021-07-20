FROM ubuntu:16.04

RUN apt update

RUN apt install apache2 -y

COPY HTML /var/www/html/

EXPOSE 80

CMD apachectl -D FOREGROUND