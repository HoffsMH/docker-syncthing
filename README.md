# docker-syncthing

Run [syncthing](https://syncthing.net) from a docker container

## Install

- ssh pi@ip

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
./build.sh
```

```sh
./run.sh
```

0.0.0.0:8080
set a password


If you want to add a new folder, make sure you set the path to something in `/srv/data`.

**NOTE**: for security reasons, starting this docker container will change the permissions of all files in your data directory to a new, docker-only user. This ensures that the docker container can access the files.

