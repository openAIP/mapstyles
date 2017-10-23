FROM nginx

MAINTAINER Stephan Besser <stephan@openaip.net>

COPY . /usr/share/nginx/html
WORKDIR /usr/share/nginx/html
