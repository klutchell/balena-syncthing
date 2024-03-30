# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.4@sha256:0329d478433fd429f66ceeb74bba813a44925e9c7a0bdfa68c4a0d66eb4e26e8

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
