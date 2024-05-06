# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.6@sha256:62eaa9802bcbeac1f5cc9cc1444a40318d4ea57ca5168a0c79689fb92a86761f

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
