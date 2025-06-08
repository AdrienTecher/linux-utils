su
lsblk -o NAME,SIZE,LABEL,FSTYPE,FSVER,MOUNTPOINT
cryptsetup luksOpen /dev/nvme0n1p6 fedora-luks
mkdir /mnt/fedora
mount -t btrfs -o subvol=@ /dev/mapper/fedora-luks /mnt/fedora
mkdir /mnt/fedora/boot
mkdir /mnt/fedora/boot/efi
mount /dev/nvme0n1p1 /mnt/fedora/boot/efi
mount /dev/nvme0n1p2 /mnt/fedora/boot
