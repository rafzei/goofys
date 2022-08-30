FROM alpine:3.16.2

LABEL maintainer="Rafal Zeidler webdler@gmail.com"

RUN apk update && apk add gcc ca-certificates openssl musl-dev git fuse syslog-ng coreutils curl

ENV GOOFYS_VERSION 0.24.0
RUN curl --fail -sSL -o /usr/local/bin/goofys https://github.com/kahing/goofys/releases/download/v${GOOFYS_VERSION}/goofys \
    && chmod +x /usr/local/bin/goofys
ENV CATFS_VERSION 0.9.0
RUN curl -sSL -o /usr/local/bin/catfs https://github.com/kahing/catfs/releases/download/v${CATFS_VERSION}/catfs && chmod +x /usr/local/bin/catfs

ARG ENDPOINT
ENV MOUNT_DIR /mnt/s3
ENV REGION us-east-1
ENV BUCKET teleport-bucket
ENV STAT_CACHE_TTL 1m0s
ENV TYPE_CACHE_TTL 1m0s
ENV DIR_MODE 0700
ENV FILE_MODE 0600
ENV UID 1000
ENV GID 1000
ENV MOUNT_ACCESS nonempty
ENV CREATE_USER False
ENV NEW_GROUP group
ENV NEW_USER user

RUN mkdir /mnt/s3

VOLUME /mnt/s3

COPY rootfs/ /

RUN chmod +x /usr/bin/run.sh

ENTRYPOINT ["sh"]
CMD ["/usr/bin/run.sh"]
