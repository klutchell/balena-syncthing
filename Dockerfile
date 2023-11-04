# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.25.0@sha256:e76d3d3abfce2f7ef788a6c2af28d4fecfabb8d191ace6a4ad7e1496d1b9a5ea

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
