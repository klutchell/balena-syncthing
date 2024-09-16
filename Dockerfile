# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.12@sha256:cd9ec0abcab9eb51a5f1d2fd19cad2d5e84e479e6589d809121614080b37c4f2

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
