#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

echo "Setting mirrorlist"
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
echo "Server = http://repos.uo.edu.cu/archlinux/$repo/os/$arch" > /etc/pacman.d/mirrorlist

echo "Installing base packages"
pacstrap /mnt base linux linux-firmware

echo "Genering fstab"
genfstab -U /mnt >> /mnt/etc/fstab

