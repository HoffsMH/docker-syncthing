FROM ubuntu:18.04
MAINTAINER Matt Hecker  <matthecker@pm.me>

ARG SYNCTHING_VERSION=1.1.4
ARG GOSU_VERSION=1.11

ENV STNODEFAULTFOLDER=1

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install dirmngr curl ca-certificates gpg gpg-agent -y --no-install-recommends \
  && DEBIAN_FRONTEND=noninteractive apt-get autoremove -y

# grab gosu for easy step-down from root
RUN gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \
  && curl -o /usr/local/bin/gosu -SL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" \
  && curl -o /usr/local/bin/gosu.asc -L "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" \
  && gpg --verify /usr/local/bin/gosu.asc \
  && rm /usr/local/bin/gosu.asc \
  && chmod +x /usr/local/bin/gosu

# get syncthing
WORKDIR /srv
RUN useradd --no-create-home -g users syncthing
RUN curl -L -o syncthing.tar.gz "https://github.com/syncthing/syncthing/releases/download/v$SYNCTHING_VERSION/syncthing-linux-arm-v$SYNCTHING_VERSION.tar.gz" \
  && tar -xzvf syncthing.tar.gz \
  && rm -f syncthing.tar.gz \
  && mv syncthing-linux-arm-v* syncthing \
  && rm -rf syncthing/etc \
  && rm -rf syncthing/*.pdf \
  && mkdir -p /srv/config \
  && mkdir -p /srv/data

VOLUME ["/srv/data", "/srv/config"]

ADD ./start.sh /srv/start.sh
RUN chmod 770 /srv/start.sh

ENV UID=1027

ENTRYPOINT ["/srv/start.sh"]
