FS="ext4"

set -e

sudo sed -ie "\$a/dev/sda1 /mnt/sda1 $FS defaults,noatime,user,rw 0 0" /etc/fstab

sudo mount /dev/sda1 /mnt/sda1

sudo mkdir -p /mnt/sda1/syncthing/data
sudo mkdir -p /mnt/sda1/syncthing/config


sudo chmod 777 /mnt/sda1/syncthing/data
sudo chmod 777 /mnt/sda1/syncthing/config
