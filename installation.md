# Installation



###### Check if your boot with UEFI

```shell
ls /sys/firmware/efi/efivars
```



###### Check internet conection

```shell
ping -c 4 archlinux.org
```



###### Update system clock

```shell
date && timedatectl set-ntp true && date
```



###### Check the disk to partition

```shell
lsblk
```



###### Partitioning disk

```shell
cfdisk
```



Select the partition table type (recommended GPT)  (If the disk has a partition table, this don't appear)

###### Partition table example

| Device    | Size  | Type             |
| --------- | ----- | ---------------- |
| /dev/sdx1 | 550M  | EFI              |
| /dev/sdx2 | 4GB   | SWAP             |
| /dev/sdx3 | 100GB | Linux filesystem |
| /dev/sdx4 | 150GB | Linux filesystem |

When finish, select `Write`




###### Formatting partitions created

```shell
# EFI
mkfs.fat -F32 /dev/sdx1
# SWAP
mkswap /dev/sdx2
swapon /dev/sdx2
# Root
mkfs.ext4 /dev/sdx3
mkfs.ext4 /dev/sdx4
```



###### Mount filesystem

```shell
# Root
mount /dev/sdx3 /mnt
# Efi
mkdir /mnt/boot/efi -p
mount /dev/sdx1 /mnt/boot/efi
# Home
mkdir /mnt/home
mount /dev/sdx4 /mnt/home
```

###### 

###### Download pre-installation script

```shell
pacman -S git
git clone https://github.com/adrianrl99/dotfiles

cd dotfiles
sh pre-install.sh

arch-chroot /mnt

sh install.sh
```



###### Set a root password

```shell
passwd
```



###### Configure grub

```shell
vim /etc/default/grub
# Change this key
GRUB_CMDLINE_LINUX_DEFAULT="text"
```

```
grub-mkconfig -o /boot/grub/grub.cfg
```



###### Reboot

```shell
exit
umount -R /mnt
reboot
```
