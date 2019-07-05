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

