# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.6@sha256:0f69786427f711e506fefd6eb66645817dbf99c91b7d37860158bb504e63f756

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
