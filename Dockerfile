# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.2@sha256:dd617c2a984ff0e9c2b782cf988fc7f746ee0cebc9ea9d9551f8da5686de8d1c

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
