# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.25.0@sha256:37610128d1fe84a78e541db19123dafe1be3c2d081cc78d4afa14ab151d7d5ac

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
