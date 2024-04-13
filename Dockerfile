# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.6@sha256:5dff1bcae36d3daf5959915607033f77ad8400a09e2c7592e30fb9feb18a8709

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
