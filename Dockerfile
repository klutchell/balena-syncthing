# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.26.1@sha256:c0f140e840115ccda573e05d83604b0aaa89e25cadff4edfd45c43f0843a8241

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
