FROM nginx

MAINTAINER Stephan Besser <stephan@openaip.net>

RUN mkdir -p /var/www/html

COPY ./web/* /var/www/html
WORKDIR /var/www/html
