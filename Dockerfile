# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.23.7@sha256:fa6c2bce52ccb8d4d81605031507fc9b7c558e32c7ec12e128de36ba873fa2a2

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
