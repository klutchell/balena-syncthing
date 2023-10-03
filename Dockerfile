# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.25.0@sha256:ba0cf7b3118001f64133e83e6764de40893878475eb3b4c8994e73aa43873a18

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
