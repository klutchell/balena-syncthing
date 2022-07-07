#!/usr/bin/with-contenv bash
# shellcheck shell=bash

# list all block devices that do not include the kernel boot partition
root_uuid="$(cat /proc/cmdline | sed -rn 's/.*root=UUID=([^ ]+).*/\1/p')"
mapfile -t block_devs < <(lsblk -J -O | jq -r --arg UUID "${root_uuid}" '.blockdevices[] | 
    select(.children) | select( all(.children[]; .uuid != $UUID )) | .children[].path')

# automount block device partitions at /media/{UUID}
if [ ${#block_devs[@]} -gt 0 ]
then
    echo "Found block storage devices: ${block_devs[*]}"
    for uuid in $(blkid -sUUID -ovalue "${block_devs[@]}")
    do
        {
            mkdir -pv /media/"${uuid}"
            mount -v UUID="${uuid}" /media/"${uuid}"
        } || continue
    done
else
    echo "No block storage devices found."
fi
