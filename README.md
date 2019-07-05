# docker-syncthing

Run [syncthing](https://syncthing.net) from a docker container

## Install

```sh
touch sdd/boot/ssh
touch sdd/boot/wpa_supplicant.conf
```

```
country=US
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1

network={
ssid="WIFI_SSID"
scan_ssid=1
psk="WIFI_PASSWORD"
key_mgmt=WPA-PSK
}

- ssh pi@ip
raspberry

```sh
passwd
```

```sh
git clone git://github.com/HoffsMH/docker-syncthing
cd docker-syncthing
```

```sh
./install_docker.sh
```

```sh
./setup_fstab.sh #only run this once
```

```sh
./build.sh
```

```sh
./run.sh
```

ip:8080
set a password

**NOTE**: for security reasons, starting this docker container will change the permissions of all files in your data directory to a new, docker-only user. This ensures that the docker container can access the files.

