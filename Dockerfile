# https://docs.linuxserver.io/images/docker-syncthing
FROM lscr.io/linuxserver/syncthing:1.27.4@sha256:1a7cb8189b9a231ec966bf44de773d0ce33a3147af59c1bd9a20cfe113e6cce1

# hadolint ignore=DL3018
RUN apk add --no-cache bash blkid lsblk jq util-linux

COPY 30-mount.sh /etc/cont-init.d/
