#!/usr/bin/with-contenv bash
# shellcheck shell=bash

mapfile -t usb_devices < <(lsblk -J -O | jq -r '.blockdevices[] | 
    select(.subsystems=="block:scsi:usb:platform" or .subsystems=="block:scsi:usb:pci:platform") | 
    .path, .children[].path')

# automount USB device partitions at /media/{UUID}
if [ ${#usb_devices[@]} -gt 0 ]
then
    echo "Found USB storage block devices: ${usb_devices[*]}"
    for uuid in $(blkid -sUUID -ovalue "${usb_devices[@]}")
    do
        {
            mkdir -pv /media/"${uuid}"
            mount -v UUID="${uuid}" /media/"${uuid}"
        } || continue
    done
else
    echo "No USB block storage devices found."
fi
