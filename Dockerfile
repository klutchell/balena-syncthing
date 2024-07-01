# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.8@sha256:77e01f31c68b6a0877222b538c976e0df1e2ba1137bbf7a496f6a70148239929

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
