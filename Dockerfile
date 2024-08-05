# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.9@sha256:bfcd4a3081bad466f914e40b4e10a6544944ae9c6f5bf4f54345c312d55a8d2a

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
