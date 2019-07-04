sudo docker rm -f syncthing

sudo docker run -d --restart=always \
   -v /mnt/tsp/pi_1/data/personal:/srv/data \
  -v /srv/syncthing:/srv/config/syncthing \
  -p 22000:22000  -p 21027:21027/udp -p 8080:8080 \
  --name syncthing \
  syncthing
