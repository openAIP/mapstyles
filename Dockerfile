### just copy build files over - no automatic install/build for assets in this dockerfile
FROM busybox
RUN mkdir -p /mapstyles
WORKDIR /mapstyles
COPY ./web .

CMD ["tail", "-f", "/dev/null"]
