# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.2@sha256:8085df5baef02f8ccc45d03f1fc9d8790a6d9de67e078d43d946a90730b9a10a

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
