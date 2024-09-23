# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.12@sha256:f80ba28cd9597b38a8f25ce1c5097aa92bb08d34a684286e759a90edcd5db617

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
