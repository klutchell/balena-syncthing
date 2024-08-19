# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.10@sha256:d6502d919f49f16a80689ce92c211f945f1d64a34c0d3f23ecc27a2a4d1dd0ac

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
