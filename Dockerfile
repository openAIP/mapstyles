FROM busybox

RUN mkdir -p /mapstyles
COPY ./web /mapstyles
WORKDIR /mapstyles
