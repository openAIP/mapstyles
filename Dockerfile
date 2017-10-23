FROM nginx

MAINTAINER Stephan Besser <stephan@openaip.net>

RUN mkdir -p /var/www/html

COPY . /var/www/html
WORKDIR /var/www/html

RUN touch index.html && \
    echo "<html><body>Hello World</body></html>" > index.html
