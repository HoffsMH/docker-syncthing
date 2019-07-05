FS="ext4"

sudo mkdir -p /mnt/sda1/syncthing/data
sudo mkdir -p /mnt/sda1/syncthing/config

sudo sed -ie "$a\/dev" /etc/fstab


sudo mount /dev/sda1/ /mnt/sda1

sudo chmod 777 /mnt/sda1/syncthing/data
sudo chmod 777 /mnt/sda1/syncthing/config
