# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.25.0@sha256:e39ccc82d6e1802509557c87ef1d3e2aa79ed371a4c79d95e32fd677b6d9985b

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
