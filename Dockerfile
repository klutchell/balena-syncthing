# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.4@sha256:96e4e7260d310bb9821a4cb83df81ddaaf2699e5afa8e2d845521252bcf66f1b

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
