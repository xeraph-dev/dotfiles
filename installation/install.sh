#!/bin/bash - 

set -o nounset                              # Treat unset variables as an error

echo "Setting timezone"
ln -sf /usr/share/zoneinfo/America/Havana /etc/localtime
hwclock --systohc
date

echo "Setting locale"
cp /etc/locale.gen /etc/locale.gen.bak
cat << EOF > /etc/locale.gen 
en_US.UTF-8 UTF-8
en_US ISO-8859-1
es_ES.UTF-8 UTF-8
es_ES ISO-8859-1
EOF
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf

echo "Setting hostname"
echo desktop > /etc/hostname

echo "Setting hosts"
cat << EOF > /etc/hosts
127.0.0.1       localhost desktop.localdomain desktop
::1             localhost

10.180.0.30     secure.etecsa.net
181.225.244.243 repos.uo.edu.cu
EOF

pacman -Sy

echo "Installing networkmanager"
pacman -S networkmanager
echo "Enabling NetworkManager"
systemctl enable NetworkManager

echo "Installing grub"
pacman -S grub efibootmgr 
echo "Setting grub"
grub-install --target=x86_64-efi --efi-directory=/boot/efi
