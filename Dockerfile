# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.23.5@sha256:90c9f84c300f04503e3dad1a4afd69485f925fb7ee4fdd1db88e26c314a3e894

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
