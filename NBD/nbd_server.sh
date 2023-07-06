#!/bin/bash

read -p "Enter file size (<input> * 1024):" count

dd if=/dev/zero of=/mnt/dhini bs=1024 count=$count
echo "Created file under /mnt/dhini 1024 * " $count
echo "Adding file system..."
mke2fs /mnt/dhini
echo "Running nbd-server with config file /etc/nbd-server/config on port 10809/tcp"
nbd-server
