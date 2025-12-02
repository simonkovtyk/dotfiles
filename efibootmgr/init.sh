#!/bin/bash

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

efibootmgr --create --disk /dev/nvme1n1 --part 1 --label "Arch Linux" --loader /vmlinuz-linux --unicode "root=UUID=f0d8f2ad-f719-4ebc-800c-b6213301d88b rw initrd=\initramfs-linux.img loglevel=6"
