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

```
lsblk
```



###### Partitioning disk

```shell
cfdisk
```

Select the partition table type (recommended GPT)  (If the disk has a partition table, this don't appear)

###### Partition table example

| Device    | Size                      | Type             |
| --------- | ------------------------- | ---------------- |
| /dev/sdx1 | 550M                      | EFI              |
| /dev/sdx2 | 2xRAM                     | SWAP             |
| /dev/sdx3 | Remaining (at least 20GB) | Linux filesystem |

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
```

###### Mount filesystem

```shell
# Root
mount /dev/sdx3 /mnt

# Efi
mkdir /mnt/boot/efi -p
mount /dev/sdx1 /mnt/boot/efi
```



###### Add custom repo to mirrorlist

```shell
nano /etc/pacman.d/mirrorlist
```

Comment all, and put (this only in Cuba)

```
Server = http://repos.uo.edu.cu/archlinux/$repo/os/$arch
```



###### Install base packages

```shell
pacstrap /mnt base linux linux-firmware neovim git
```



###### Generate filesystem tab

```shell
genfstab -U /mnt >> /mnt/etc/fstab
```



###### Change root path

```shell
arch-chroot /mnt
```



###### Configure timezone

```shell
ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
hwclock --systohc && date
```

Example: America/Havana



###### Configure language

In /etc/locale.gen uncomment languages to use

```shell
locale-gen
echo LANG=lang_Country.UTF-8 > /etc/locale.conf
```

- Spanish: es_ES
- English: en_US or en_UK



###### Configure hostname

```shell
echo your_hostname > /etc/hostname
```

###### Configure hosts

```shell
vim /etc/hosts

# Cread existing comments and put
127.0.0.1	localhost your_hostname
::1			localhost
```



###### Install and enable NetworkManager

Configure custom repo server again

```shell
pacman -S networkmanager
systemctl enable NetworkManager
```



###### Set a root password

```shell
passwd
```



###### Configure bootloader

```shell
pacman -S grub efibootmgr
grub-install --target=x86_64-efi --efi-directory=/boot/efi
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
