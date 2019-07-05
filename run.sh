sudo docker rm -f syncthing

sudo docker run -d --restart=always \
   -v /mnt/sda1/syncthing/data:/srv/data \
  -v /mnt/sda1/syncthing/config:/srv/config/syncthing \
  -p 22000:22000  -p 21027:21027/udp -p 8080:8080 \
  --name syncthing \
  syncthing
