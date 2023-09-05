# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.24.0@sha256:970d5e9a95d130c6b4e235a7baee651a0d7d813566dcdd17bb88cff37a6258bf

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
