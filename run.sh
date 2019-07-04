docker rm -f syncthing

docker run -d --restart=always \
  -v /srv/sync:/mnt/tsp/pi_1/data/personal \
  -v /srv/syncthing:/srv/config/syncthing \
  -p 22000:22000  -p 21027:21027/udp -p 8384:8384 \
  --name syncthing \
  syncthing
